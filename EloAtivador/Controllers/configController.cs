using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using EloAtivador.Entites;
using SQLite;
using EloAtivador.Controllers;
using System.Net;
using System.Threading;

namespace EloAtivador.Controller
{
	public class configController
	{
		public configController()
		{
			Database.GetConnection().CreateTable<Entites.Config>();
		}
		public Entites.Config Config { get { return this.GetConfig(); } }

		public List<Entites.Config> FindAll()
		{
			SQLiteConnection conn = Database.GetConnection();
			try
			{
				return conn.Table<Entites.Config>().ToList();
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return null;
			}
		}
		public bool Save(Entites.Config c)
		{
			SQLiteConnection conn = Database.GetConnection();
			try
			{
				if (FindAll().Count > 0)
					c.CONFIG_ID = GetConfig().CONFIG_ID;

				if (c.CONFIG_ID == null)
					conn.Insert(c);
				else
					conn.Update(c);

				return true;
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return false;
			}
		}

		/// <summary>
		///  Retorna o DNS atual baseado na configuração Interno/Externo
		/// </summary>
		/// <returns></returns>
		public DNS GetDNS()
		{
			try
			{
				var config = this.Config;

				DNS dns = new DNS();
				dns.Host = config.INDDNS ? config.DNSEXT.Split(':')[0] : config.DNSINT.Split(':')[0];
				dns.Port = int.Parse(config.INDDNS ? config.DNSEXT.Split(':')[1] : config.DNSINT.Split(':')[1]);
				dns.DNSInfo = config.INDDNS ? DNS.IndDNS.DNSExterno : DNS.IndDNS.DNSInterno;

				return dns;
			}
			catch (Exception ex)
			{
				Toast.MakeText(Application.Context, ex.ToString(), ToastLength.Short).Show();
				return null;
			}
		}

		/// <summary>
		///  Verifica se é possível conectar ao servidor (usando configurações já salvas no sistema)
		/// </summary>
		/// <returns></returns>
		public bool TestServerConnection()
		{
			try
			{

				DNS dns = GetDNS();

				bool result = false;

				IPAddress ipa = (IPAddress)Dns.GetHostAddresses(dns.Host)[0];
				TcpClient client = new TcpClient();
				client.ConnectAsync(ipa, dns.Port);

				for (int i = 0; i <= 2; i++)
				{
					if (client.Connected)
					{
						client.Close();
						result = true;
						break;
					}
					Thread.Sleep(1000);
				}

				return result;

			}
			catch (Exception e)
			{
				Log.Error("", e.ToString());
				return false;
			}
		}


		/// <summary>
		///  Testa conexão com servidor a partir de parâmetros host e port
		/// </summary>
		/// <param name="host"></param>
		/// <param name="port"></param>
		/// <returns></returns>
		public bool TestServerConnection(string host, int port)
		{
			try
			{
				bool result = false;

				IPAddress ipa = (IPAddress)Dns.GetHostAddresses(host)[0];
				TcpClient client = new TcpClient();
				client.ConnectAsync(ipa, port);

				for (int i = 0; i <= 2; i++)
				{
					if (client.Connected)
					{
						client.Close();
						result = true;
						break;
					}
					Thread.Sleep(1000);
				}

				return result;

			}
			catch (Exception e)
			{
				Log.Error("", e.ToString());
				return false;
			}
		}
		public Entites.Config GetConfig()
		{
			var conn = Database.GetConnection();
			try
			{
				return conn.Table<Entites.Config>().FirstOrDefault();
			}
			catch (Exception ex)
			{
				string error = "";
				Log.Error(error, ex.ToString());
				return null;
			}
		}
	}
}