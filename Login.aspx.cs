using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineExaminationProject
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        HttpCookie ck;
        HttpCookie ad;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.;Initial Catalog=onlineexam;Integrated Security=True");
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            qry = "select * from login where username = '" + name.Text + "' and password = '" + pass.Text + "'";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (name.Text == "admin")
                {
                    ad = new HttpCookie("acook");
                    ad.Values.Add("un", name.Text);
                    Response.Cookies.Add(ad);
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    ck = new HttpCookie("cook");
                    ck.Values.Add("un", name.Text);
                    Response.Cookies.Add(ck);
                    Response.Redirect("testselection.aspx");
                }
            }
            else
            {
                msg.Text = "Invalid Username/Password";
            }
        }
    }
}