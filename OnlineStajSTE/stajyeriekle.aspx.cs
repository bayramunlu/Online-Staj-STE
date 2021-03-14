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
    public partial class stajyeriekle : System.Web.UI.Page
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        string cek;

        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand mö = new SqlCommand("select * from iller", baglan);
            SqlDataReader mdr = mö.ExecuteReader();
            while (mdr.Read())
            {
                ListItem litem = new ListItem();
                litem.Text = mdr["isim"].ToString();
                litem.Value = mdr["il_no"].ToString();

                DropDownList1.Items.Add(litem);
            }
            baglan.Close();
            for (int i = 1; i < 101; i++)
            {
                DropDownList4.Items.Add(i.ToString());
            }
        }
        protected void Stj_ekleclick(object sender, EventArgs e)
        {
            try
            {
                baglan.Open();
            SqlCommand cmd = new SqlCommand("Insert into firma(firma_adi,firma_il,firma_ilce,firma_email,firma_telefon,firma_konu,firma_beklenti,firma_stajer_maas,firma_eleman,firma_stajyer_kabul,firma_puan,firma_aciklama,ogrenci_id,firma_yayinlanma_tarihi) values('" + text2.Value + "','" + DropDownList1.SelectedItem.Text.ToString() + "','" + DropDownList2.SelectedItem.Text.ToString() + "','" + text6.Value + "','" + text7.Value + "','" + text8.Value + "','" + text9.Value + "','" + DropDownList3.SelectedItem.Text.ToString() + "','" + Convert.ToInt32(text11.Value) + "','" + text12.Value + "','" + Convert.ToInt32(DropDownList4.SelectedItem.Text) + "','" + text13.Value + "','" + Session["ogrenci_id"] + "',GETDATE())", baglan);
            cmd.ExecuteNonQuery();
            baglan.Dispose();
            baglan.Close();
            Response.Write("<script>alert('Kayıt Başarı ile gerçekleşti!')</script>");
            }
            catch (Exception)
            {

                Response.Redirect("stajyeriekle.aspx");
            }
            
        }


        protected void Ddlselect_Changed(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            cek = DropDownList1.SelectedItem.Value.ToString();

            baglan.Open();
            SqlCommand möt = new SqlCommand("select isim from ilceler where il_no like '" + cek + "'", baglan);
            SqlDataReader mdrt = möt.ExecuteReader();
            while (mdrt.Read())
            {
                DropDownList2.Items.Add(mdrt["isim"].ToString());
            }
            baglan.Close();
        }
    }
}