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
    public partial class kullaniciprofili : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == false)
            {
                for (int i = 1; i < 101; i++)
                {
                    DropDownList1.Items.Add(i.ToString());
                }
                SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);


                if (Session["ogrenci_id"] != null)
                {
                    profilguncelle.Visible = true;
                    stajguncelle.Visible = true;
                    baglan.Open();
                    SqlCommand sorgur = new SqlCommand("select * from ogrenci where ogrenci_id='" + Session["ogrenci_id"] + "'", baglan);
                    SqlDataReader drm = sorgur.ExecuteReader();
                    if (drm.Read())
                    {
                        ogrenci_adi.Value = drm["ogrenci_adi"].ToString();
                        ogrenci_soyadi.Value = drm["ogrenci_soyadi"].ToString();
                        ogrenci_email.Value = drm["ogrenci_email"].ToString();
                        Label1.Text = drm["ogrenci_adi"].ToString();

                        ogrenci_adi1.Value = drm["ogrenci_adi"].ToString();
                        ogrenci_soyadi1.Value = drm["ogrenci_soyadi"].ToString();
                        ogrenci_email1.Value = drm["ogrenci_email"].ToString();
                        ogrenci_parola1.Value = drm["ogrenci_parola"].ToString();
                        Label2.Text = drm["ogrenci_adi"].ToString();

                        Label3.Text = drm["ogrenci_adi"].ToString();
                        Label4.Text = drm["ogrenci_adi"].ToString();
                        Label5.Text = drm["ogrenci_adi"].ToString();
                        Image1.ImageUrl = drm["ogrenci_img"].ToString();
                    }
                    baglan.Close();


                    baglan.Open();
                    SqlCommand sorgu = new SqlCommand("select * from firma where ogrenci_id='" + Session["ogrenci_id"] + "'", baglan);
                    SqlDataReader dr = sorgu.ExecuteReader();
                    if (dr.Read())
                    {
                        firma_adi1.Value = dr["firma_adi"].ToString();
                        firma_il1.Value = dr["firma_il"].ToString();
                        firma_ilce1.Value = dr["firma_ilce"].ToString();
                        firma_email1.Value = dr["firma_email"].ToString();
                        firma_telefon1.Value = dr["firma_telefon"].ToString();
                        firma_konu1.Value = dr["firma_konu"].ToString();
                        firma_beklenti1.Value = dr["firma_beklenti"].ToString();
                        firma_stajer_maas1.Value = dr["firma_stajer_maas"].ToString();
                        firma_eleman1.Value = dr["firma_eleman"].ToString();
                        firma_stajyer_kabul1.Value = dr["firma_stajyer_kabul"].ToString();
                        firma_puan1.Value = dr["firma_puan"].ToString();
                        firma_aciklama1.Value = dr["firma_aciklama"].ToString();
                        firma_adi.Value = dr["firma_adi"].ToString();
                        firma_email.Value = dr["firma_email"].ToString();
                        firma_telefon.Value = dr["firma_telefon"].ToString();
                        firma_konu.Value = dr["firma_konu"].ToString();
                        firma_beklenti.Value = dr["firma_beklenti"].ToString();
                        firma_stajer_maas.Value = dr["firma_stajer_maas"].ToString();
                        firma_eleman.Value = dr["firma_eleman"].ToString();
                        firma_stajyer_kabul.Value = dr["firma_stajyer_kabul"].ToString();
                        DropDownList1.SelectedItem.Text = dr["firma_puan"].ToString();
                        firma_aciklama.Value = dr["firma_aciklama"].ToString();
                    }
                    baglan.Close();


                }
                else
                {
                    stajguncelle.Visible = false;
                    profilguncelle.Visible = false;


                    baglan.Open();
                    SqlCommand sorgucu = new SqlCommand("select * from ogrenci where ogrenci_id='" + Request.QueryString["ogrenci_id"] + "'", baglan);
                    SqlDataReader drmci = sorgucu.ExecuteReader();
                    if (drmci.Read())
                    {
                        ogrenci_adi.Value = drmci["ogrenci_adi"].ToString();
                        ogrenci_soyadi.Value = drmci["ogrenci_soyadi"].ToString();
                        ogrenci_email.Value = drmci["ogrenci_email"].ToString();
                        Label1.Text = drmci["ogrenci_adi"].ToString();

                        ogrenci_adi1.Value = drmci["ogrenci_adi"].ToString();
                        ogrenci_soyadi1.Value = drmci["ogrenci_soyadi"].ToString();
                        ogrenci_email1.Value = drmci["ogrenci_email"].ToString();
                        ogrenci_parola1.Value = drmci["ogrenci_parola"].ToString();
                        Label2.Text = drmci["ogrenci_adi"].ToString();

                        Label3.Text = drmci["ogrenci_adi"].ToString();
                        Label4.Text = drmci["ogrenci_adi"].ToString();
                        Label5.Text = drmci["ogrenci_adi"].ToString();
                        Image1.ImageUrl = drmci["ogrenci_img"].ToString();
                    }

                    baglan.Close();



                    baglan.Open();
                    SqlCommand sorgu = new SqlCommand("select * from firma where ogrenci_id='" + Request.QueryString["ogrenci_id"] + "'", baglan);
                    SqlDataReader dr = sorgu.ExecuteReader();
                    if (dr.Read())
                    {
                        firma_adi1.Value = dr["firma_adi"].ToString();
                        firma_il1.Value = dr["firma_il"].ToString();
                        firma_ilce1.Value = dr["firma_ilce"].ToString();
                        firma_email1.Value = dr["firma_email"].ToString();
                        firma_telefon1.Value = dr["firma_telefon"].ToString();
                        firma_konu1.Value = dr["firma_konu"].ToString();
                        firma_beklenti1.Value = dr["firma_beklenti"].ToString();
                        firma_stajer_maas1.Value = dr["firma_stajer_maas"].ToString();
                        firma_eleman1.Value = dr["firma_eleman"].ToString();
                        firma_stajyer_kabul1.Value = dr["firma_stajyer_kabul"].ToString();
                        firma_puan1.Value = dr["firma_puan"].ToString();
                        firma_aciklama1.Value = dr["firma_aciklama"].ToString();
                    }
                    baglan.Close();



                }

                firma_guncelle.Visible = false;
                firma.Visible = false;
                ogrenci_guncelle.Visible = false;
                profilisim.Visible = true;
                stjyeriliste.Visible = true;

                FileUpload1.Visible = false;
                imagebutton.Visible = false;

            }



        }
        protected void Profil_click(object sender, EventArgs e)
        {
            firma.Visible = false;
            ogrenci.Visible = true;

            ogrenci_guncelle.Visible = false;
            imagebutton.Visible = false;
            FileUpload1.Visible = false;
        }

        protected void Profil_guncelle_click(object sender, EventArgs e)
        {
            ogrenci.Visible = false;
            firma.Visible = false;
            ogrenci_guncelle.Visible = true;
            firma_guncelle.Visible = false;
            FileUpload1.Visible = true;

            imagebutton.Visible = true;
        }
        protected void Guncelle_click(object sender, EventArgs e)
        {
            string resim = "";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                resim = "../img/" + FileUpload1.FileName;

            }
            SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
            baglan.Open();
            SqlCommand sorgumuzk = new SqlCommand("update  ogrenci set ogrenci_adi='" + ogrenci_adi1.Value.ToString() + "',ogrenci_soyadi='" + ogrenci_soyadi1.Value.ToString() + "',ogrenci_email='" + ogrenci_email1.Value.ToString() + "',ogrenci_parola='" + ogrenci_parola1.Value.ToString() + "',ogrenci_img='" + resim.ToString() + "'where ogrenci_id='" + Session["ogrenci_id"] + "'", baglan);
            sorgumuzk.ExecuteNonQuery();
            sorgumuzk.Dispose();
            baglan.Dispose();
            baglan.Close();
            Response.Redirect("kullaniciprofili.aspx");

        }
        protected void Staj_yeri_click(object sender, EventArgs e)
        {
            ogrenci.Visible = false;
            firma.Visible = true;
            ogrenci_guncelle.Visible = false;
            firma_guncelle.Visible = false;
            FileUpload1.Visible = false;

            imagebutton.Visible = false;
        }

        protected void Staj_yeri_guncelle_click(object sender, EventArgs e)
        {

            ogrenci.Visible = false;
            firma.Visible = false;
            ogrenci_guncelle.Visible = false;
            firma_guncelle.Visible = true;
            FileUpload1.Visible = false;
            imagebutton.Visible = false;

        }
        protected void Firma_guncelle_click(object sender, EventArgs e)
        {

            SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

            baglan.Open();
            SqlCommand sorgumuzk = new SqlCommand("update  firma set firma_adi='" + firma_adi.Value.ToString() + "',firma_email='" + firma_email.Value.ToString() + "',firma_telefon='" + firma_telefon.Value.ToString() + "',firma_konu='" + firma_konu.Value.ToString() + "',firma_beklenti='" + firma_beklenti.Value.ToString() + "',firma_stajer_maas='" + firma_stajer_maas.Value.ToString() + "',firma_eleman='" + firma_eleman.Value.ToString() + "',firma_stajyer_kabul='" + firma_stajyer_kabul.Value.ToString() + "',firma_puan='" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "',firma_aciklama='" + firma_aciklama.Value.ToString() + "'where ogrenci_id='" + Session["ogrenci_id"] + "'", baglan);
            sorgumuzk.ExecuteNonQuery();
            sorgumuzk.Dispose();
            baglan.Dispose();
            baglan.Close();
            Response.Redirect("kullaniciprofili.aspx");

        }
    }
}