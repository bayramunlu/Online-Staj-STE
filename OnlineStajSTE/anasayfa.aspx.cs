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
    public partial class anasayfa : System.Web.UI.Page
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand sorgu = new SqlCommand("select TOP 3 * from firma ORDER BY firma_puan DESC", baglan);
            SqlDataReader oku = sorgu.ExecuteReader();
            Repeater1.DataSource = oku;
            Repeater1.DataBind();
            sorgu.Dispose();
            oku.Dispose();
            oku.Close();
            baglan.Close();
        }
        protected void Filtrele_click(object sender, EventArgs e)
        {
            Response.Redirect("stajyerleri.aspx?il=" + DropDownList1.SelectedItem.Text.ToString() + "");

        }
    }
}