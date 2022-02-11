using Android.App;
using Android.OS;
using Android.Support.V7.App;
using Android.Runtime;
using Android.Widget;
using EloAtivador.Controller;
using Android.Content;
using Android.Views;
using EloAtivador.Views;

namespace EloAtivador
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true, Icon = "@mipmap/logo")]
    public class MainActivity : AppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);

            if (new configController().Config != null)
            {
                Intent i = new Intent(Application.Context, typeof(Views.MainPage_Client));
                StartActivity(i);
            }
            // Senão sincroniza dados atravéz desta intent 
            else
            {
                Intent i = new Intent(Application.Context, typeof(Views.LoginView));
                StartActivity(i);
            }

            Finish();
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        /// <summary>
		///  Cria o menu para o app
		/// </summary>
		/// <param name="menu"></param>
		/// <returns></returns>
		public override bool OnCreateOptionsMenu(IMenu menu)
        {
            return new MainPage_Client().OnCreateOptionsMenu(menu);
        }


        /// <summary>
        ///  Controla a ação do botão ao ser clicado (Menu)
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            return new MainPage_Client().OnOptionsItemSelected(item);
        }
    }
}