using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using EloAtivador.Adapter;
using EloAtivador.Controllers;
using EloAtivador.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EloAtivador.Controller;
using Android.Support.V7.Widget;

namespace EloAtivador.Views
{
	[Activity(WindowSoftInputMode = SoftInput.AdjustResize, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation, ScreenOrientation = ScreenOrientation.Portrait)]
	public class MainPage_Client : AppCompatActivity
	{
		private EditText txtNOMPESS;
		private CheckBox cbBLOQ, cbATIV;
		private ListView listView;
		private CardView cvINDCONN;
		private TextView lblBLOQ, lblATIV;

		public List<Pessoa> listPessoas { get; set; } = null;

		private System.Timers.Timer timer = null;
		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);
			SetContentView(Resource.Layout.Activity_MainPageCliente);

			txtNOMPESS = FindViewById<EditText>(Resource.Id.txtNOMPESS);
			cbBLOQ = FindViewById<CheckBox>(Resource.Id.cbBLOQ);
			cbATIV = FindViewById<CheckBox>(Resource.Id.cbATIV);
			listView = FindViewById<ListView>(Resource.Id.listView);
			cvINDCONN = FindViewById<CardView>(Resource.Id.cvINDCONN);
			lblBLOQ = FindViewById<TextView>(Resource.Id.lblBLOQ);
			lblATIV = FindViewById<TextView>(Resource.Id.lblATIV);

			listPessoas = new List<Pessoa>();

			cbATIV.Checked = true;
			LoadListView();

			this.TestConection();
			timer = new System.Timers.Timer(TimeSpan.FromMilliseconds(30000).TotalMilliseconds);
			timer.Elapsed += (s, a) => this.TestConection();
			timer.Enabled = true;
			timer.AutoReset = true;

			timer.Start();

			txtNOMPESS.TextChanged += (sender, args) =>
			{
				LoadListView();
			};

			cbATIV.CheckedChange += (sender, args) =>
			{
				LoadListView();
			};
			cbBLOQ.CheckedChange += (sender, args) =>
			{
				LoadListView();
			};
			lblBLOQ.Click += (sender, args) =>
			{
				if (cbBLOQ.Checked == true)
					cbBLOQ.Checked = false;
				else
					cbBLOQ.Checked = true;
			};
			lblATIV.Click += (sender, args) =>
			{
				if (cbATIV.Checked == true)
					cbATIV.Checked = false;
				else
					cbATIV.Checked = true;
			};

			listView.ItemLongClick += (sender, args) =>
			{
				var adapter = (ClientListAdapter)listView.Adapter;
				var item = adapter[args.Position];
				Pessoa cliente = new pessoaController().FindByName(item.NOMPESS);

				Android.App.AlertDialog.Builder builder = new Android.App.AlertDialog.Builder(this);

				if (DateTime.Parse(cliente.DATVALID) <= DateTime.Now)
				{
					builder.SetTitle($"{cliente.NOMPESS}");
					builder.SetMessage("SELECIONE A OPÇÃO DE ATIVAÇÃO");
					builder.SetPositiveButton("LIBERAR 1 DIA", (sender, args) =>
					{
						if (new configController().TestServerConnection())
						{
							if (new pessoaController().ComSocket(cliente, "1"))
							{

								Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
								builderAUX.SetTitle("AVISO DO SISTEMA");
								builderAUX.SetMessage("LIBERAÇÃO REALIZADA COM SUCESSO !");
								builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
								Android.App.AlertDialog dialog = builderAUX.Create();
								dialog.Show();

							}
							else
							{
								Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
								builderAUX.SetTitle("AVISO DO SISTEMA");
								builderAUX.SetMessage("FALHA NA LIBERAÇÃO DO SISTEMA, VERIFIQUE!");
								builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
								Android.App.AlertDialog dialog = builderAUX.Create();
								dialog.Show();
							}

						}
						else
						{
							Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
							builderAUX.SetTitle("AVISO DO SISTEMA");
							builderAUX.SetMessage("SEM CONEXÃO COM O SERVIDOR !");
							builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
							Android.App.AlertDialog dialog = builderAUX.Create();
							dialog.Show();
						}



					});
					builder.SetNegativeButton("LIBERAÇÃO TOTAL", (sender, args) =>
					{
						if (new configController().TestServerConnection())
						{
							if (new pessoaController().ComSocket(cliente, "L"))
							{

								Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
								builderAUX.SetTitle("AVISO DO SISTEMA");
								builderAUX.SetMessage("LIBERAÇÃO REALIZADA COM SUCESSO !");
								builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
								Android.App.AlertDialog dialog = builderAUX.Create();
								dialog.Show();
							}
							else
							{
								Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
								builderAUX.SetTitle("AVISO DO SISTEMA");
								builderAUX.SetMessage("FALHA NA LIBERAÇÃO DO SISTEMA, VERIFIQUE!");
								builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
								Android.App.AlertDialog dialog = builderAUX.Create();
								dialog.Show();
							}
						}
						else
						{
							Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
							builderAUX.SetTitle("AVISO DO SISTEMA");
							builderAUX.SetMessage("SEM CONEXÃO COM O SERVIDOR !");
							builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
							Android.App.AlertDialog dialog = builderAUX.Create();
							dialog.Show();
						}
					});
					Android.App.AlertDialog dialog = builder.Create();
					dialog.Show();
				}
				else
				{
					builder.SetTitle("AVISO DO SISTEMA");
					builder.SetMessage($"O SISTEMA DA {cliente.NOMPESS} JÁ ESTÁ ATIVO !");
					builder.SetNeutralButton("OK", (sender, args) => { return; });
					Android.App.AlertDialog dialog = builder.Create();
					dialog.Show();
				}
			};
		}

		private void LoadListView()
		{
			listPessoas.Clear();
			listView.Adapter = null;

			List<Pessoa> pessoa = new pessoaController().FindAll();

			if (txtNOMPESS.Text != "")
			{
				if (cbBLOQ.Checked == true && cbATIV.Checked == true)
				{
					pessoa.Where(pe => pe.NOMPESS.StartsWith(txtNOMPESS.Text.ToUpper()) && DateTime.Parse(pe.DATVALID).AddMonths(6) >= DateTime.Now).ToList().ForEach(p =>
					{
						DateTime datevalid = DateTime.Parse(p.DATVALID);
						if (datevalid <= DateTime.Now)
							listPessoas.Add(p);
					});
				}
				else if (cbBLOQ.Checked == true && cbATIV.Checked == false)
				{
					pessoa.Where(pe => pe.NOMPESS.StartsWith(txtNOMPESS.Text.ToUpper())).ToList().ForEach(p =>
					{
						DateTime datevalid = DateTime.Parse(p.DATVALID).AddMonths(6);
						if (datevalid <= DateTime.Now)
							listPessoas.Add(p);
					});
				}
				else if (cbBLOQ.Checked == false && cbATIV.Checked == true)
				{
					pessoa.Where(pe => pe.NOMPESS.StartsWith(txtNOMPESS.Text.ToUpper()) && DateTime.Parse(pe.DATVALID).AddMonths(6) >= DateTime.Now).ToList().ForEach(p =>
					{
						listPessoas.Add(p);
					});
				}
				else if (cbBLOQ.Checked == false && cbATIV.Checked == false)
				{
					pessoa.Where(pe => pe.NOMPESS.StartsWith(txtNOMPESS.Text.ToUpper())).ToList().ForEach(p =>
					{
						listPessoas.Add(p);
					});
				}
			}
			else
			{
				if (cbBLOQ.Checked == true && cbATIV.Checked == true)
				{
					pessoa.Where(pe => DateTime.Parse(pe.DATVALID).AddMonths(6) >= DateTime.Now).ToList().ForEach(p =>
					{
						DateTime datevalid = DateTime.Parse(p.DATVALID);
						if (datevalid <= DateTime.Now)
							listPessoas.Add(p);
					});
				}
				else if (cbBLOQ.Checked == true && cbATIV.Checked == false)
				{
					pessoa.ForEach(p =>
					{
						DateTime datevalid = DateTime.Parse(p.DATVALID).AddMonths(6);
						if (datevalid <= DateTime.Now)
							listPessoas.Add(p);
					});
				}
				else if (cbBLOQ.Checked == false && cbATIV.Checked == true)
				{
					pessoa.Where(pe => DateTime.Parse(pe.DATVALID).AddMonths(6) >= DateTime.Now).ToList().ForEach(p =>
					{
						listPessoas.Add(p);
					});
				}
				else if (cbBLOQ.Checked == false && cbATIV.Checked == false)
				{
					pessoa.ForEach(p =>
					{
						listPessoas.Add(p);
					});
				}
			}

			var adapter = new ClientListAdapter(this, listPessoas);
			this.listView.Adapter = adapter;
		}

		/// <summary>
		///  Cria o menu para o app
		/// </summary>
		/// <param name="menu"></param>
		/// <returns></returns>
		public override bool OnCreateOptionsMenu(IMenu menu)
		{
			base.OnCreateOptionsMenu(menu);
			MenuInflater menuInflater = MenuInflater;
			menuInflater.Inflate(Resource.Menu.main_menu, menu);

			return true;
		}


		/// <summary>
		///  Controla a ação do botão ao ser clicado (Menu)
		/// </summary>
		/// <param name="item"></param>
		/// <returns></returns>
		public override bool OnOptionsItemSelected(IMenuItem item)
		{

			switch (item.ItemId)
			{
				case Resource.Id.atualizar:
					{
						Android.App.AlertDialog.Builder builder = new Android.App.AlertDialog.Builder(this);
						builder.SetTitle("AVISO DO SISTEMA");
						builder.SetMessage("DESEJA ATUALIZAR OS DADOS ?");
						builder.SetPositiveButton("SIM", (s, e) =>
						{
							DNS dns = new configController().GetDNS();
							this.listView.Adapter = null;

							string str = string.Empty;

							var pessoas = new pessoaController().FindAll();

							if (pessoas.Count > 0)
							{
								DateTime lastDTH = new pessoaController().FindAll().Max(p => p.DTHULTAT).AddSeconds(1);
								str = $"CARGACLIENTEELO00000000000000{lastDTH}";
							}
							else
								str = "CARGACLIENTEELO00000000000000";

							if (new pessoaController().ComSocket(str, dns.Host, dns.Port))
							{
								Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
								builderAUX.SetTitle("ELOATIVADOR");
								builderAUX.SetMessage("SISTEMA ATUALIZADO COM SUCESSO !");
								builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
								Android.App.AlertDialog dialog2 = builderAUX.Create();
								dialog2.Show();
								listPessoas.Clear();
								listView.Adapter = null;
								LoadListView();
							}
							else
							{
								Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
								builderAUX.SetTitle("ELOATIVADOR");
								builderAUX.SetMessage("ERRO AO ATUALIZAR O SISTEMA, VERIFIQUE!");
								builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
								Android.App.AlertDialog dialog2 = builderAUX.Create();
								dialog2.Show();
								var adapter = new ClientListAdapter(this, listPessoas);
								this.listView.Adapter = adapter;
							}
						});
						builder.SetNegativeButton("NÃO", (s, e) => { return; });
						Android.App.AlertDialog dialog = builder.Create();
						dialog.Show();

						break;
					}
				case Resource.Id.cargatotal:
					{
						Config config = new configController().GetConfig();
						EditText txtNewDNS = new EditText(this);
						Android.App.AlertDialog.Builder builder = new Android.App.AlertDialog.Builder(this);
						builder.SetTitle("REINICIAR O SISTEMA");
						builder.SetMessage("ENTRE COM O DNS PARA FAZER A CARGA TOTAL: ");
						builder.SetView(txtNewDNS);
						if (config.INDDNS == true)
							txtNewDNS.Text = $"{config.DNSEXT}";
						else
							txtNewDNS.Text = $"{config.DNSINT}";
						builder.SetPositiveButton("RECARREGAR", (s, e) =>
						{
							string[] dns = txtNewDNS.Text.Split(":");
							if (new configController().TestServerConnection(dns[0], int.Parse(dns[1])))
							{
								config.INDDNS = false;
								config.DNSINT = txtNewDNS.Text;
								new configController().Save(config);
								DNS aux = new configController().GetDNS();

								this.listView.Adapter = null;
								if (new pessoaController().ComSocket($"CARGACLIENTEELO00000000000000", aux.Host, aux.Port))
								{
									Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
									builderAUX.SetTitle("ELOATIVADOR");
									builderAUX.SetMessage("OPERAÇÃO REALIAZDA COM SUCESSO !");
									builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
									Android.App.AlertDialog dialog2 = builderAUX.Create();
									dialog2.Show();
									listPessoas.Clear();
									listView.Adapter = null;
									LoadListView();
								}
								else
								{
									Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
									builderAUX.SetTitle("ELOATIVADOR");
									builderAUX.SetMessage("ERRO AO REINICIAR O SISTEMA, VERIFIQUE!");
									builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
									Android.App.AlertDialog dialog2 = builderAUX.Create();
									dialog2.Show();
									var adapter = new ClientListAdapter(this, listPessoas);
									this.listView.Adapter = adapter;
								}
							}
							else
							{
								Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
								builderAUX.SetTitle("AVISO DO SISTEMA");
								builderAUX.SetMessage("SEM CONEXÃO COM O SERVIDOR !");
								builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
								Android.App.AlertDialog dialog2 = builderAUX.Create();
								dialog2.Show();
								listPessoas.Clear();
								listView.Adapter = null;
								LoadListView();
							}
						});
						//builder.SetNegativeButton("EXTERNO", (s, e) =>
						//{
						//	string[] dns = txtNewDNS.Text.Split(":");
						//	if (new configController().TestServerConnection(dns[0], int.Parse(dns[1])))
						//	{
						//		config.INDDNS = true;
						//		config.DNSEXT = txtNewDNS.Text;
						//		new configController().Save(config);
						//		DNS aux = new configController().GetDNS();

						//		this.listView.Adapter = null;
						//		if (new pessoaController().ComSocket($"CARGACLIENTEELO00000000000000", aux.Host, aux.Port))
						//		{
						//			Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
						//			builderAUX.SetTitle("ELOATIVADOR");
						//			builderAUX.SetMessage("OPERAÇÃO REALIAZDA COM SUCESSO !");
						//			builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
						//			Android.App.AlertDialog dialog2 = builderAUX.Create();
						//			dialog2.Show();
						//			listPessoas.Clear();
						//			listView.Adapter = null;
						//			LoadListView();
						//		}
						//		else
						//		{
						//			Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
						//			builderAUX.SetTitle("ELOATIVADOR");
						//			builderAUX.SetMessage("ERRO AO REINICIAR O SISTEMA, VERIFIQUE!");
						//			builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
						//			Android.App.AlertDialog dialog2 = builderAUX.Create();
						//			dialog2.Show();
						//			var adapter = new ClientListAdapter(this, listPessoas);
						//			this.listView.Adapter = adapter;
						//		}
						//	}
						//	else
						//	{
						//		Android.App.AlertDialog.Builder builderAUX = new Android.App.AlertDialog.Builder(this);
						//		builderAUX.SetTitle("AVISO DO SISTEMA");
						//		builderAUX.SetMessage("SEM CONEXÃO COM O SERVIDOR !");
						//		builderAUX.SetNeutralButton("OK", (sender, args) => { return; });
						//		Android.App.AlertDialog dialog2 = builderAUX.Create();
						//		dialog2.Show();
						//		listPessoas.Clear();
						//		listView.Adapter = null;
						//		LoadListView();
						//	}
						//});

						builder.SetNeutralButton("CANCELAR", (s, e) => { return; });
						Android.App.AlertDialog dialog = builder.Create();
						dialog.Show();

						break;
					}
			}

			return true;
		}
		private bool TestConection()
		{
			if (new configController().TestServerConnection() != true)
			{
				cvINDCONN.SetCardBackgroundColor(Android.Graphics.Color.ParseColor("Red"));
				return false;
			}
			else
			{
				cvINDCONN.SetCardBackgroundColor(Android.Graphics.Color.ParseColor("Green"));
				return true;
			}
		}
		protected override void OnDestroy()
		{
			timer.Stop();
			base.OnDestroy();
		}
	}
}