using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KSRTC
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        public string ROUTE
        {
            get
            {
                return DropDownList1.Text;
            }
        }
        public string BUS
        {
            get
            {
                return DropDownList2.Text;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*  SqlConnection con = new SqlConnection();
              con.Open();
              SqlCommand cmd = new SqlCommand(" insert into Route values('" + DropDownList )
            Server.Transfer("ETM1.aspx");*/
        }
    }
}