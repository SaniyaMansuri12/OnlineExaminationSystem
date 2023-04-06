using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationProject
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        HttpCookie ck;
        HttpCookie ad;
        protected void Page_Load(object sender, EventArgs e)
        {
            ad = Request.Cookies["acook"];
            if (ad == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void duser_Click(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.;Initial Catalog=onlineexam;Integrated Security=True");
            con.Open();
            qry = "delete from login where username = '" + Userlist.Text + "'";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
           
            Response.Write("<script>alert('User Deleted successfully')</script");
            Response.Redirect("DeleteUser.aspx");

        }
    }
}