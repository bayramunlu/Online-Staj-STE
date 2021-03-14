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
    public partial class adminkullanici : System.Web.UI.Page
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                ogrenci_guncelle.Visible = false;
                if (Request.QueryString["sid"] != null)
                {
                    baglan.Open();
                    /*sil*/
                    SqlCommand cmdsil = new SqlCommand("delete from ogrenci where ogrenci_id='" + Request.QueryString["sid"] + "'", baglan);
                    cmdsil.ExecuteNonQuery();

                    baglan.Close();
                }

                if (Request.QueryString["did"] != null)
                {
                    baglan.Open();
                    SqlCommand sorgur = new SqlCommand("select * from ogrenci where ogrenci_id='" + Request.QueryString["did"] + "'", baglan);
                    SqlDataReader drm = sorgur.ExecuteReader();
                    if (drm.Read())
                    {

                        ogrenci_adi1.Value = drm["ogrenci_adi"].ToString();
                        ogrenci_soyadi1.Value = drm["ogrenci_soyadi"].ToString();
                        ogrenci_email1.Value = drm["ogrenci_email"].ToString();
                        ogrenci_parola1.Value = drm["ogrenci_parola"].ToString();

                    }
                    baglan.Close();
                    firma_liste.Visible = false;
                    ogrenci_guncelle.Visible = true;
                }

            }
            baglan.Open();
            SqlCommand goster = new SqlCommand("select * from ogrenci", baglan);
            SqlDataReader goku = goster.ExecuteReader();
            Repeater1.DataSource = goku;
            Repeater1.DataBind();
            goster.Dispose();
            goku.Dispose();
            goku.Close();
            baglan.Close();
        }
        protected void Ogrenci_guncelle_click(object sender, EventArgs e)
        {


            baglan.Open();
            SqlCommand sorgumuzk = new SqlCommand("update  ogrenci set ogrenci_adi='" + ogrenci_adi1.Value.ToString() + "',ogrenci_soyadi='" + ogrenci_soyadi1.Value.ToString() + "',ogrenci_email='" + ogrenci_email1.Value.ToString() + "',ogrenci_parola='" + ogrenci_parola1.Value.ToString() + "'where ogrenci_id='" + Request.QueryString["did"] + "'", baglan);
            sorgumuzk.ExecuteNonQuery();
            sorgumuzk.Dispose();
            baglan.Dispose();
            baglan.Close();
            Response.Redirect("../admin/admin-kullanici.aspx");

        }
    }
}