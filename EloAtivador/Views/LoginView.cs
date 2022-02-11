using Android;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V4.App;
using Android.Support.V4.Content;
using Android.Support.V7.App;
using Android.Support.V7.Widget;
using Android.Util;
using Android.Views;
using Android.Widget;
using EloAtivador.Controller;
using EloAtivador.Controllers;
using EloAtivador.Entites;
using EloAtivador.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace EloAtivador.Views
{
	[Activity(Label = "@string/app_name")]
	public class LoginView : AppCompatActivity
	{
		private EditText txDNSInterno, txDNSExterno, txEmpresa, txOperador;
		private SwitchCompat swDNS;
		private Button btnEntrar, btnCancelar;

		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);

			if (ContextCompat.CheckSelfPermission(ApplicationContext, Manifest.Permission.ReceiveBootCompleted) != Android.Content.PM.Permission.Granted)
				ActivityCompat.RequestPermissions(this, new string[] { Manifest.Permission.ReceiveBootCompleted }, 1);
			if (ContextCompat.CheckSelfPermission(ApplicationContext, Manifest.Permission.AccessNetworkState) != Android.Content.PM.Permission.Granted)
				ActivityCompat.RequestPermissions(this, new string[] { Manifest.Permission.AccessNetworkState }, 2);
			if (ContextCompat.CheckSelfPermission(ApplicationContext, Manifest.Permission.AccessWifiState) != Android.Content.PM.Permission.Granted)
				ActivityCompat.RequestPermissions(this, new string[] { Manifest.Permission.AccessWifiState }, 6);
			if (ContextCompat.CheckSelfPermission(ApplicationContext, Manifest.Permission.Internet) != Android.Content.PM.Permission.Granted)
				ActivityCompat.RequestPermissions(this, new string[] { Manifest.Permission.Internet }, 7);

			SetContentView(Resource.Layout.Activity_Login);

			btnEntrar = FindViewById<Button>(Resource.Id.btnEntrar);
			btnCancelar = FindViewById<Button>(Resource.Id.btnCancelar);
			txDNSInterno = FindViewById<EditText>(Resource.Id.txDNSInterno);
			txDNSExterno = FindViewById<EditText>(Resource.Id.txDNSExterno);
			txEmpresa = FindViewById<EditText>(Resource.Id.txEmpresa);
			txOperador = FindViewById<EditText>(Resource.Id.txOperador);
			swDNS = FindViewById<SwitchCompat>(Resource.Id.swDNS);


			btnEntrar.Click += (sender, args) => btn_ENTRAR();

		}

		private void btn_ENTRAR()
		{
			configController configC = new configController();

			if (new configController().Config != null)
				Database.Drop();

			try
			{
				if (txDNSInterno.Text.IsEmpty() && txDNSExterno.Text.IsEmpty())
					this.Msg("APENAS UM DOS CAMPOS DE DNS PODEM FICAR EM BRANCO!");
				else
				{
					DNS[] DNSArray = GetDNS();

					if (DNSArray == null)
					{
						this.Msg("ERRO AO DEFINIR ENDEREÇO(S) DNS! VERIFIQUE.");
						return;
					}

					DNS dns = null;

					DNSArray.ToList().ForEach((aux) =>
					{
						if (swDNS.Checked)
						{
							if (aux != null)
								if (aux.DNSInfo == DNS.IndDNS.DNSExterno)
									dns = aux;
						}
						else
						{
							if (aux != null)
								if (aux.DNSInfo == DNS.IndDNS.DNSInterno)
									dns = aux;
						}
					});

					if (dns == null)
					{
						this.Msg("DNS SELECIONADO NÃO FOI INFORMADO!");
						return;
					}

					if (!configC.TestServerConnection(dns.Host, dns.Port))
					{
						this.Msg("SEM CONEXÃO COM SERVIDOR! VERIFIQUE.");
						return;
					}

					EnableButtons(false);

					new Thread(() =>
					{
						try
						{
							if (new NetworkController().TestConnection())
							{
								this.Msg("SINCRONIZANDO DADOS COM O SERVIDOR! AGUARDE...");


								pessoaController pessoaC = new pessoaController();
								if (pessoaC.ComSocket($"CARGACLIENTEELO00000000000000", dns.Host, dns.Port))
								{
									Entites.Config config = new Entites.Config()
									{
										INDSINC = true,
										DTHSINC = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"),
										VERSAODB = 1,
										DNSINT = txDNSInterno.Text,
										DNSEXT = txDNSExterno.Text,
										INDDNS = swDNS.Checked
									};

									if (configC.Save(config))
									{
										this.Msg("SINCRONIZAÇÃO COM SERVIDOR REALIZADA COM SUCESSO!");
										Intent i = new Intent(this, typeof(MainPage_Client) /*typeof(Pedido2View)*/);
										StartActivity(i);
										Finish();
									}
									else
									{
										this.Msg("FALHA AO SICRONIZAR DADOS COM SERVIDOR! VERIFIQUE.");
									}

								}
								else
								{
									this.Msg("ERRO AO SINCRONIZAR CLIENTES! VERIFIQUE.");
								}

							}
							else
							{
								this.Msg("VOCÊ ESTÁ SEM INTERNET! VERIFIQUE.");
							}
						}
						finally
						{
							RunOnUiThread(() => EnableButtons());
						}
					}).Start();
				}
			}
			catch (Exception ex)
			{
				EnableButtons();
				GetError(ex.ToString());
				return;
			}
		}
		private DNS[] GetDNS()
		{
			DNS[] dns = new DNS[2];

			if (!string.IsNullOrWhiteSpace(txDNSInterno.Text))
			{
				DNS aux1 = new DNS();

				if (txDNSInterno.Text.Contains(':'))
				{
					try
					{
						aux1.Host = txDNSInterno.Text.Split(':')[0];
						aux1.Port = int.Parse(txDNSInterno.Text.Split(':')[1]);
						aux1.DNSInfo = DNS.IndDNS.DNSInterno;
						dns[0] = aux1;
					}
					catch
					{
						this.Msg("ENDEREÇO DNS INVÁLIDO! VERIFIQUE.");
						return null;
					}
				}
			}

			if (!string.IsNullOrWhiteSpace(txDNSExterno.Text))
			{
				DNS aux2 = new DNS();

				if (txDNSExterno.Text.Contains(':'))
				{
					try
					{
						aux2.Host = txDNSExterno.Text.Split(':')[0];
						aux2.Port = int.Parse(txDNSExterno.Text.Split(':')[1]);
						aux2.DNSInfo = DNS.IndDNS.DNSExterno;
						dns[1] = aux2;
					}
					catch
					{
						this.Msg("ENDEREÇO DNS INVÁLIDO! VERIFIQUE.");
						return null;
					}
				}
			}

			if (dns.Length > 0)
				return dns;
			else
				return null;
		}
		public void EnableButtons(bool enable = true)
		{
			if (enable)
			{
				btnEntrar.Enabled = true;
				btnCancelar.Enabled = true;
				txDNSInterno.Enabled = true;
				txDNSExterno.Enabled = true;
				txEmpresa.Enabled = true;
				txOperador.Enabled = true;
				swDNS.Enabled = true;
			}
			else
			{
				btnEntrar.Enabled = false;
				btnCancelar.Enabled = false;
				txDNSInterno.Enabled = false;
				txDNSExterno.Enabled = false;
				txEmpresa.Enabled = false;
				txOperador.Enabled = false;
				swDNS.Enabled = false;
			}
		}
		/// <summary>
		///  Trata saídas de erro 
		/// </summary>
		/// <param name="error"></param>
		private void GetError(string message)
		{
			string error = "";
			Log.Error(error, message);
			this.Msg(message);
		}
	}
}