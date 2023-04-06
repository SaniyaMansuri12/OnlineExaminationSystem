using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OnlineExaminationProject
{
    public partial class Reports : System.Web.UI.Page
    {
        HttpCookie ad;
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        string qry;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ad = Request.Cookies["acook"];
            if (ad == null)
            {
                Response.Redirect("Login.aspx");
            }
            try
            {
                con = new SqlConnection("Data Source=.;Initial Catalog=onlineexam;Integrated Security=True");
                con.Open();

                qry = "select * from results";
                cmd = new SqlCommand(qry, con);
                dr = cmd.ExecuteReader();
                //cmd.ExecuteNonQuery();
                
            }
            catch(Exception ex)
            {
               
            }
        }
    }
}