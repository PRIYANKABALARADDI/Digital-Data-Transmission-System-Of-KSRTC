using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KSRTC
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = HPDS\SQLEXPRESS05; Initial Catalog = KSRTC; Integrated Security = True");
          /*  if (TextBox1.Text == "admin" and TextBox2.Text == "admin")
            {
                Response.Redirect("admin.aspx");
            }
            else {*/
                SqlCommand cmd = new SqlCommand("select * from Reg where Name='" + TextBox1.Text + "' and Pass='" + TextBox2.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("admin.aspx");
                }
                {
                    Label1.Text = "invalid username and password";
                }
            } 
    }
}