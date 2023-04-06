using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineExaminationProject
{
    public partial class AddUser : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        string cqury;
        HttpCookie ad;
        protected void Page_Load(object sender, EventArgs e)
        {
            ad = Request.Cookies["acook"];
            if (ad == null)
            {
                Response.Redirect("Login.aspx");
            }
            
            con = new SqlConnection("Data Source=.;Initial Catalog=onlineexam;Integrated Security=True");
            con.Open();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            cqury = "select * from login where username = '" + name.Text + "'";
            cmd = new SqlCommand(cqury, con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                msg.Text = "Username already exist";
                msg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                con.Close();
                con.Open();
                qry = "Insert into login values ('" + name.Text + "','" + pass.Text + "','user')";
                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                msg.Text = "Username successfully added.";
                msg.ForeColor = System.Drawing.Color.Green;
                name.Text = "";
                pass.Text = "";
            }
        }
    }
}