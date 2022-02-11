using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using EloAtivador.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EloAtivador.Adapter
{
	public class ClientListAdapter : BaseAdapter<Pessoa>
	{
		private Activity context;
		private List<Pessoa> list;


		public ClientListAdapter(Activity _context, List<Pessoa> _list)
		{
			context = _context;
			list = _list;
		}

		public override Pessoa this[int position] => list[position];

		public override int Count => list == null ? 0 : list.Count;

		public override long GetItemId(int position)
		{
			long aux;
			if (list[position].CG_PESSOA_ID == null)
				aux = 0;
			else
				aux = list[position].CG_PESSOA_ID.Value;

			return aux;
		}


		public override Android.Views.View GetView(int position, Android.Views.View convertView, ViewGroup parent)
		{
			var view = convertView ?? context.LayoutInflater.Inflate(Resource.Layout.adapter_ClientList, parent, false);

			var nompess = view.FindViewById<TextView>(Resource.Id.lblNOMPESS);
			var nomsis = view.FindViewById<TextView>(Resource.Id.lblNOMSIS);
			var data = view.FindViewById<TextView>(Resource.Id.lblDATVALID);


			nompess.Text = list[position].NOMPESS;
			nomsis.Text = list[position].TIPSIST;
			data.Text = list[position].DATVALID;
			return view;
		}
	}
}