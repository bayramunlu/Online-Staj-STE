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
    public partial class stajyerleri : System.Web.UI.Page
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand sorgu = new SqlCommand("select f.firma_id,o.ogrenci_id,firma_puan,firma_adi,SUBSTRING(f.firma_aciklama,1,140) as firma_aciklama, CONVERT(VARCHAR(10),f.firma_yayinlanma_tarihi,104) as firma_yayinlanma_tarihi, o.ogrenci_adi from firma f inner join ogrenci o on f.ogrenci_id=o.ogrenci_id  ORDER BY f.firma_puan DESC", baglan);
            SqlDataReader oku = sorgu.ExecuteReader();
            Repeater1.DataSource = oku;
            Repeater1.DataBind();
            sorgu.Dispose();
            oku.Dispose();
            oku.Close();
            baglan.Close();
            if (Request.QueryString["il"] != null)
            {
                baglan.Open();
                SqlCommand sorguk = new SqlCommand("select f.firma_id,o.ogrenci_id,firma_puan,firma_adi,SUBSTRING(f.firma_aciklama,1,140) as firma_aciklama, CONVERT(VARCHAR(10),f.firma_yayinlanma_tarihi,104) as firma_yayinlanma_tarihi, o.ogrenci_adi from firma f inner join ogrenci o on f.ogrenci_id=o.ogrenci_id where firma_il='" + Request.QueryString["il"].ToString() + "'  ORDER BY f.firma_puan DESC", baglan);
                SqlDataReader okuk = sorguk.ExecuteReader();
                Repeater1.DataSource = okuk;
                Repeater1.DataBind();
                sorgu.Dispose();
                okuk.Dispose();
                okuk.Close();
                baglan.Close();
            }
        }
        protected void Filtrele_click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand sorgu = new SqlCommand("select f.firma_id,o.ogrenci_id,firma_puan,firma_adi,SUBSTRING(f.firma_aciklama,1,140) as firma_aciklama, CONVERT(VARCHAR(10),f.firma_yayinlanma_tarihi,104) as firma_yayinlanma_tarihi, o.ogrenci_adi from firma f inner join ogrenci o on f.ogrenci_id=o.ogrenci_id where firma_il='" + DropDownList1.SelectedItem.Text.ToString() + "'  ORDER BY f.firma_puan DESC", baglan);
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