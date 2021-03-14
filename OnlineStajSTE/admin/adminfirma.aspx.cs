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
    public partial class adminfirma : System.Web.UI.Page
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == false)
            {
                firma_guncelle.Visible = false;
                if (Request.QueryString["sid"] != null)
                {
                    baglan.Open();
                    /*sil*/
                    SqlCommand cmdsil = new SqlCommand("delete from firma where firma_id='" + Request.QueryString["sid"] + "'", baglan);
                    cmdsil.ExecuteNonQuery();

                    baglan.Close();
                }

                if (Request.QueryString["did"] != null)
                {
                    baglan.Open();
                    /*düzenleme işlemi*/
                    SqlCommand sorgumuz = new SqlCommand("select*from firma where firma_id=" + Request.QueryString["did"], baglan);
                    SqlDataReader oku = sorgumuz.ExecuteReader();
                    if (oku.Read())
                    {
                        firma_adi.Value = oku["firma_adi"].ToString();
                        firma_il.Value = oku["firma_il"].ToString();
                        firma_ilce.Value = oku["firma_ilce"].ToString();
                        firma_email.Value = oku["firma_email"].ToString();
                        firma_telefon.Value = oku["firma_telefon"].ToString();
                        firma_konu.Value = oku["firma_konu"].ToString();
                        firma_beklenti.Value = oku["firma_beklenti"].ToString();
                        firma_stajer_maas.Value = oku["firma_stajer_maas"].ToString();
                        firma_eleman.Value = oku["firma_eleman"].ToString();
                        firma_stajyer_kabul.Value = oku["firma_stajyer_kabul"].ToString();
                        firma_puan.Value = oku["firma_puan"].ToString();
                        firma_aciklama.Value = oku["firma_aciklama"].ToString();
                    }
                    sorgumuz.Dispose();
                    oku.Dispose();
                    oku.Close();
                    baglan.Close();
                    firma_liste.Visible = false;
                    firma_guncelle.Visible = true;
                }

            }
            baglan.Open();
            SqlCommand goster = new SqlCommand("select * from firma ", baglan);
            SqlDataReader goku = goster.ExecuteReader();
            Repeater1.DataSource = goku;
            Repeater1.DataBind();
            goster.Dispose();
            goku.Dispose();
            goku.Close();
            baglan.Close();
        }
        protected void Firma_guncelle_click(object sender, EventArgs e)
        {


            baglan.Open();
            SqlCommand sorgumuzk = new SqlCommand("update  firma set firma_adi='" + firma_adi.Value.ToString() + "',firma_il='" + firma_il.Value.ToString() + "',firma_ilce='" + firma_ilce.Value.ToString() + "',firma_email='" + firma_email.Value.ToString() + "',firma_telefon='" + firma_telefon.Value.ToString() + "',firma_konu='" + firma_konu.Value.ToString() + "',firma_beklenti='" + firma_beklenti.Value.ToString() + "',firma_stajer_maas='" + firma_stajer_maas.Value.ToString() + "',firma_eleman='" + firma_eleman.Value.ToString() + "',firma_stajyer_kabul='" + firma_stajyer_kabul.Value.ToString() + "',firma_puan='" + firma_puan.Value.ToString() + "',firma_aciklama='" + firma_aciklama.Value.ToString() + "'where firma_id='" + Request.QueryString["did"] + "'", baglan);
            sorgumuzk.ExecuteNonQuery();
            sorgumuzk.Dispose();
            baglan.Dispose();
            baglan.Close();
            Response.Redirect("../admin/admin-firma.aspx");

        }
    }
}