using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace KSRTC
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=HPDS\SQLEXPRESS05;Initial Catalog=KSRTC;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select * from ETM3 where BusNo='" + DropDownList1.SelectedValue.ToString() + "'", con);
            //DataTable dt1 = new DataTable();
            //da1.Fill(dt1);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Conductor.aspx");
        }
    }
}