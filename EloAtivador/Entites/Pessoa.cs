using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using SQLite;

namespace EloAtivador.Entites
{
    [Table("CG_PESSOA")]
    public class Pessoa
    {
        [PrimaryKey, Column("CG_PESSOA_ID")]
        public long? CG_PESSOA_ID { get; set; } = null;
        public string IDDOCPESS { get; set; }
        public string NOMPESS { get; set; } = null;
        public string DATVALID { get; set; }
        public string TIPSIST { get; set; }
        public string DATULTAT { get; set; }
		public DateTime DTHULTAT { get; set; }
		public string USRULTAT { get; set; }
	}
}