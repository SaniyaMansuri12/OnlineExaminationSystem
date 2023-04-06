using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationProject
{
    public partial class DeleteQPaper : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
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

        protected void dqpaper_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            qry = "delete from question where settype = '" + testlist.SelectedValue + "'";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            msg.Text = "Successfully deleted";
            Response.Redirect("DeleteQPaper.aspx");
        }
    }
}