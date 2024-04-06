using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KSRTC
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = HPDS\SQLEXPRESS05; Initial Catalog = KSRTC; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Reg values('" +TextBox1.Text+ "','" +TextBox2.Text+ "','" +TextBox3.Text+ "','" +TextBox4.Text+ "','" +TextBox5.Text+ "')",con);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Label1.Text = "Successfully registered...";

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}