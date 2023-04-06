using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationProject
{
    public partial class PaperPreview : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public string qry;

        string settype;
        public int ans;
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

            settype = System.Convert.ToString(Request.QueryString["settype"]);
            HiddenField1.Value = testlist.SelectedValue;
            //settype = System.Convert.ToString(Request.QueryString["settype"]);
            qry = "Select * from question where settype = '" + HiddenField1.Value + "' order by qid";

            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SetQPaper.aspx");
        }

        protected void testlist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SetQPaper.aspx");
        }
    }
}