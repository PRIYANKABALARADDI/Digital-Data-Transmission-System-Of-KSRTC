using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;

namespace KSRTC
{
    public partial class WebForm13 : System.Web.UI.Page
    {

        
            SqlConnection con = new SqlConnection(@"Data Source=HPDS\SQLEXPRESS05;Initial Catalog=KSRTC;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = System.DateTime.Now.ToString();
            if (!IsPostBack)
            {
                /*Page ls = (Page)Context.Handler;
                if (ls is WebForm11)
                {
                    Label5.Text = ((WebForm11)ls).ROUTE;
                    Label6.Text= ((WebForm11)ls).BUS;
                }*/
                SqlDataAdapter da = new SqlDataAdapter("select * from RouteNo", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "RouteNo";

               SqlDataAdapter da1 = new SqlDataAdapter("select * from BusNo", con);
                DataTable dt1= new DataTable();
                da1.Fill(dt1);
                DropDownList3.DataSource = dt1;
                DropDownList3.DataTextField = "BusNo";

                SqlDataAdapter da2= new SqlDataAdapter("select * from ETM3",con);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                DropDownList1.DataSource= dt2;
                DropDownList1.DataTextField = "srcdest";
                DataBind();
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select * from ETM3 where srcdest='"+DropDownList1.SelectedValue.ToString()+"'",con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            
            Label1.Text = dt1.Rows[0][1].ToString();
            int a = Convert.ToInt32(Label1.Text);
             double b = a * 1.2;
            Label2.Text = b.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            double c = Convert.ToDouble(TextBox1.Text);
            double b1 = Convert.ToDouble(Label2.Text);
            double total = b1 * c;
            Label3.Text = total.ToString();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TicketStatus values('"+DropDownList2.SelectedValue.ToString()+"','"+DropDownList3.SelectedValue.ToString()+"','"+DropDownList1.SelectedValue.ToString()+"','"+Label1.Text+ "','"+TextBox1.Text+"','" + Label2.Text+"','" + Label3.Text+ "','"+Label4.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "Ticket Generated Successfully & data stored in DB";
            

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Conductor.aspx");
        }
    }
}