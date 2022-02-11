using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using EloAtivador.Controller;
using EloAtivador.Entites;
using EloAtivador.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace EloAtivador.Controllers
{
	public class pessoaController
	{
		public pessoaController()
		{
			var conn = Database.GetConnection();
			conn.CreateTable<Pessoa>();
		}
		public bool Save(Pessoa p)
		{
			var conn = Database.GetConnection();
			try
			{
				if (FindByDoc(p.IDDOCPESS) == null)
				{
					conn.Insert(p);
					return true;
				}

				if (FindByDoc(p.IDDOCPESS) != null)
				{
					var aux = FindByDoc(p.IDDOCPESS);
					p.CG_PESSOA_ID = aux.CG_PESSOA_ID;
					conn.Update(p);
					return true;
					
				}

				return true;
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return false;
			}
		}
		public long? GetLastId()
		{
			var conn = Database.GetConnection();
			try
			{
				return conn.Table<Pessoa>().Max(p => p.CG_PESSOA_ID);
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return null;
			}
		}
		public Pessoa FindById(object id)
		{
			var conn = Database.GetConnection();
			try
			{
				return conn.Find<Pessoa>(id);
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return null;
			}
		}
		public Pessoa FindByName(string name)
		{
			var conn = Database.GetConnection();
			try
			{
				return conn.Table<Pessoa>().Where(p => p.NOMPESS.StartsWith(name)).FirstOrDefault();
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return null;
			}
		}

		public Pessoa FindByDoc(string doc)
		{
			var conn = Database.GetConnection();
			try
			{
				return conn.Table<Pessoa>().Where(p => p.IDDOCPESS.Equals(doc)).FirstOrDefault();
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return null;
			}
		}

		public List<Pessoa> FindAll()
		{
			var conn = Database.GetConnection();
			try
			{
				return conn.Table<Pessoa>().OrderBy(p => p.NOMPESS).ToList();
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return null;
			}
		}
		public bool ComSocket(string request, string host, int port)
		{
			bool aux = false;

			Thread t = new Thread(() =>
			{

				TcpClient client = null;
				NetworkStream netStream = null;
				bool loop = true;

				try
				{
					client = new TcpClient();
					client.Connect(host, port);

					byte[] msg = request.ToUTF8(true);

					netStream = client.GetStream();
					netStream.Write(msg, 0, msg.Length);

					if (netStream.CanRead)
						while (loop)
						{
							byte[] bytes = new byte[client.ReceiveBufferSize];
							netStream.Read(bytes, 0, client.ReceiveBufferSize);
							string receiveMsg = bytes.UTF7ToString();

							if (receiveMsg.Contains("\0\0"))
								receiveMsg = receiveMsg.Split("\0\0")[0];

							if (receiveMsg.Contains("&amp;"))
								receiveMsg = receiveMsg.Replace("&amp", "");

							receiveMsg = receiveMsg.Replace("CARGACLIENTEELO@@", "");

							string[] lines = receiveMsg.Split("@@");

							foreach (var str in lines)
							{
								if (str.StartsWith("FIMELO"))
								{
									loop = false;
									break;
								}
								else if (str != lines[lines.Length - 1])
								{
									string[] data = str.Split(';');

									Pessoa p = new Pessoa()
									{
										IDDOCPESS = data[0],
										NOMPESS = data[1],
										DATVALID = data[2],
										TIPSIST = data[3],
										DATULTAT = data[4],
										DTHULTAT = DateTime.Parse(data[5]),
										USRULTAT = data[6],
									};

									this.Save(p);
								}
								else
								{
									string[] aux = request.Split("0");

									if (request.EndsWith("CARGACLIENTEELO00000000000000"))
									{
										byte[] msgBytes = (aux[0] + str).ToUTF8(true);
										netStream.Write(msgBytes, 0, msgBytes.Length);
									}
									else
									{
										string date = request.Substring(29, 19);
										byte[] msgBytes = (aux[0] + str).ToUTF8(true);
										netStream.Write(msgBytes, 0, msgBytes.Length);
									}
								}
							}
						}

					aux = true;
				}
				catch (Exception ex)
				{
					string error = "";
					Log.Error(error, ex.ToString());
					aux = false;
				}
				finally
				{
					if (client != null) client.Close();
					if (netStream != null) netStream.Close();
				}

			});

			t.Start();
			t.Join();

			return aux;
		}
		public bool ComSocket(Pessoa pessoa, string LiberationType)
		{

			DNS dns = new configController().GetDNS();

			TcpClient client = null;
			NetworkStream netStream = null;
			StringBuilder builder = null;

			bool result = false;

			try
			{
				Task.Run(() =>
				{
					client = new TcpClient(dns.Host, dns.Port);

					netStream = client.GetStream();

					builder = new StringBuilder();

					/* Parte responsável por organizar a string a ser enviada (pedido) */
					builder.Append("LIBERARSISTEMA")
					.Append(pessoa.IDDOCPESS)
					.Append(";")
					.Append(LiberationType)
					.Append(";")
					.Append(pessoa.USRULTAT);


					// Envia os bytes para o servidor
					byte[] msg = builder.ToString().ToUTF8(true);
					netStream.Write(msg, 0, msg.Length);

					if (netStream.CanRead)
					{
						byte[] bytes = new byte[client.ReceiveBufferSize];
						netStream.Read(bytes, 0, client.ReceiveBufferSize);
						string received = bytes.UTF7ToString();

						if (received.Contains("\0\0"))
							received = received.Split("\0\0")[0];

						string[] aux = received.Split("@@");

						/* Caso o pedido retorne Ok */
						if (aux[1].StartsWith("LIBERACAOOK"))
						{
							result = true;
						}
						/* Caso erro */
						else if (aux[1].StartsWith("LIBERARSISTEMAERRO"))
						{
							result = false;
						}
					}

					builder.Clear();

				}).Wait();

				return result;
			}
			catch (Exception ex)
			{
				Log.Error("erro", ex.ToString());
				return false;
			}
			finally
			{
				if (client != null) client.Close();
				if (netStream != null) netStream.Close();
			}
		}
	}
}