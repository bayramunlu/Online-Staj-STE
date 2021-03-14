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

namespace OnlineStajSTE.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand sorgucu = new SqlCommand("select * from ogrenci where yetki= 'admin'", baglan);
            SqlDataReader drmci = sorgucu.ExecuteReader();
            if (drmci.Read())
            {
                ogrenci_adi.Value = drmci["ogrenci_adi"].ToString();
                ogrenci_soyadi.Value = drmci["ogrenci_soyadi"].ToString();
                ogrenci_email.Value = drmci["ogrenci_email"].ToString();

                ogrenci_adi1.Value = drmci["ogrenci_adi"].ToString();
                ogrenci_soyadi1.Value = drmci["ogrenci_soyadi"].ToString();
                ogrenci_email1.Value = drmci["ogrenci_email"].ToString();
                ogrenci_parola1.Value = drmci["ogrenci_parola"].ToString();
                Label1.Text = drmci["ogrenci_adi"].ToString();
            }

            baglan.Close();
        }
        protected void Profil_click(object sender, EventArgs e)
        {
            ContentPlaceHolder1.Visible = false;
            ogrenci.Visible = true;
            ogrenci_guncelle.Visible = false;

        }
        protected void Profil_guncelle_click(object sender, EventArgs e)
        {
            ContentPlaceHolder1.Visible = false;
            ogrenci.Visible = false;
            ogrenci_guncelle.Visible = true;
        }
        protected void Guncelle_click(object sender, EventArgs e)
        {

            baglan.Open();
            SqlCommand sorgumuzk = new SqlCommand("update  ogrenci set ogrenci_adi='" + ogrenci_adi1.Value.ToString() + "',ogrenci_soyadi='" + ogrenci_soyadi1.Value.ToString() + "',ogrenci_email='" + ogrenci_email1.Value.ToString() + "',ogrenci_parola='" + ogrenci_parola1.Value.ToString() + "'where yetki='admin'", baglan);
            sorgumuzk.ExecuteNonQuery();
            sorgumuzk.Dispose();
            baglan.Dispose();
            baglan.Close();
            Response.Redirect("../admin/adminanasayfa.aspx");

        }
    }
}