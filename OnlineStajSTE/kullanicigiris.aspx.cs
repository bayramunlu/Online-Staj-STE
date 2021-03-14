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
    public partial class kullanicigiris : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ogrenci_adi"] = null;
            Session["ogrenci_id"] = null;
            if (!IsPostBack)
            {
                if (Request.Cookies["Email"] != null && Request.Cookies["Password"] != null)
                {
                    g_email.Value = Request.Cookies["Email"].Value;
                    g_parola.Attributes["value"] = Request.Cookies["Password"].Value;
                    g_benihatirla.Checked = true;
                }
            }
        }
        protected void Giris_click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand mö = new SqlCommand("select*from ogrenci where ogrenci_email='" + g_email.Value + "'and ogrenci_parola='" + g_parola.Value + "'", baglan);
            SqlDataReader mdr = mö.ExecuteReader();
            if (mdr.Read())
            {

                Session["ogrenci_adi"] = mdr["ogrenci_adi"].ToString();
                Session["yetki"] = mdr["yetki"].ToString();
                Session.Add("ogrenci_id", mdr["ogrenci_id"].ToString());
                Response.Redirect("anasayfa.aspx");
            }

            else
            {
                Response.Write("<script>alert('Kullanıcı Adı veya Şifre Hatalı')</script>");

            }


            baglan.Dispose();
            baglan.Close();

            if (g_benihatirla.Checked)
            {
                Response.Cookies["Email"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);

                Response.Cookies["Email"].Value = g_email.Value.Trim();
                Response.Cookies["Password"].Value = g_parola.Value.Trim();
            }
            else
            {
                Response.Cookies["Email"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                Response.Cookies["Email"].Value = "";
                Response.Cookies["Password"].Value = "";
            }
        }
        protected void Kayit_click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("Insert into ogrenci(ogrenci_adi,ogrenci_soyadi,ogrenci_email,ogrenci_parola,yetki) values('" + Text1.Value + "','" + Text2.Value + "','" + k_email.Value + "','" + k_parola.Value + "','kullanici')", baglan);
            cmd.ExecuteNonQuery();
            baglan.Dispose();
            baglan.Close();
            Response.Write("<script>alert('Kayıt Başarı ile gerçekleşti!')</script>");
        }
    }
}