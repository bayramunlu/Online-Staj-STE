using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Data.Sql;

namespace OnlineStajSTE
{
    public partial class stajyeridetay : System.Web.UI.Page
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand sorgu = new SqlCommand("select firma_il,firma_ilce,firma_email,firma_telefon,firma_konu,firma_beklenti,firma_stajer_maas,firma_eleman,firma_stajyer_kabul,o.ogrenci_id,firma_puan,firma_adi,firma_aciklama,o.ogrenci_adi from firma f inner join ogrenci o on f.ogrenci_id=o.ogrenci_id  where f.firma_id='" + Convert.ToInt32(Request.QueryString["firma_id"]) + "'", baglan);
            SqlDataReader oku = sorgu.ExecuteReader();
            Repeater1.DataSource = oku;
            Repeater1.DataBind();
            sorgu.Dispose();
            oku.Dispose();
            oku.Close();
            baglan.Close();
        }
    }
}