using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KSRTC
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          /* SqlConnection con = new SqlConnection(@"Data Source = HPDS\SQLEXPRESS05; Initial Catalog = KSRTC; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ETM3 values('" + DropDownList2.SelectedItem.Text+ "', '" + TextBox1.Text + "')", con);
            cmd.ExecuteNonQuery();*/
        }
    }
}