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
    public partial class adminanasayfa : System.Web.UI.Page
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand sorgu = new SqlCommand("select TOP 5 * from firma ORDER BY firma_puan DESC", baglan);
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