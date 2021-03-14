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
    public partial class kullanici : System.Web.UI.MasterPage
    {
        readonly SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ogrenci_id"] != null)
            {
                Label1.Text = Session["ogrenci_adi"].ToString();
                giris.Visible = false;

            }
            else
            {
                giris.Visible = true;
                cikis.Visible = false;
                stj_ekle.Visible = false;
                profil.Visible = false;
                profilikon.Visible = false;
            }
            if (Session["ogrenci_id"] != null)
            {
                if (Session["yetki"].ToString() != "admin")
                {
                    adminpaneli.Visible = false;
                }
                else
                {
                    adminpaneli.Visible = true;
                }

            }
            
        }
        protected void Filtrele_click(object sender, EventArgs e)
        {
            Response.Redirect("stajyerleri.aspx?il=" + DropDownList1.SelectedItem.Text.ToString() + "");

        }
    }
}