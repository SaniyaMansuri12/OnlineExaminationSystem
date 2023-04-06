using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineExaminationProject
{
    public partial class Panel : System.Web.UI.Page
    {
        
        public SqlConnection con;
        public SqlCommand rcmd;
        public SqlDataReader rdr;
        public string rqry;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        string sqry;
       
        private SqlCommand scmd;
        string uname;
        public string testtype;
        public int ans;
        public int n = 0;
        public int count;
        public int marks = 0;
        public int totalmarks;
        public int qid;
        public int c;
        HttpCookie ck;
        private SqlCommand ccmd;
        private SqlDataReader cdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            ck = Request.Cookies["cook"];
            if (ck == null)
            {
                Response.Redirect("Login.aspx");
            }
            uname = ck.Values["un"].ToString();

            testtype = System.Convert.ToString(Request.QueryString["testtype"]);
            count = System.Convert.ToInt16(Request.QueryString["count"]);
            marks = System.Convert.ToInt16(Request.QueryString["marks"]);
            if (count == 0)
            {
                count = 1;
            }
            time.Text = DateTime.Now.ToString();
            con = new SqlConnection("Data Source=.;Initial Catalog=onlineexam;Integrated Security=True");

            con.Open();
            qry = "Select * from question where settype= '" + testtype + "'";
            cmd = new SqlCommand(qry,con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                n = n + 1;
            }
            con.Close();
            if(count <= n)
            {
                msg.Text = count + " of " + n;
            }
            else
            {
                msg.Text = "This was last question";
            }
            con.Open();
            rqry = "Select * from question  where settype ='" + testtype + "' order by qid";
            rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
            rdr = rcmd.ExecuteReader();
            c = 1;
            while (rdr.Read())
            {
                if(c != count)
                {
                    c = c + 1;
                }
                else
                {
                    qid = Convert.ToInt16(rdr.GetValue(0));
                    c = c + 1;

                }
         
            }
            con.Close();
        }

        protected void back_Click(object sender, EventArgs e)
        {
            count = count - 1;
            Response.Redirect("Panel.aspx?testtype=" + testtype + "&count=" + count);

        }

        protected void next_Click(object sender, EventArgs e)
        {
            con.Close();
            if (count < n)
            {
                if(RadioButton1.Checked == true)
                {
                    ans = 1;
                }
                if (RadioButton2.Checked == true)
                {
                    ans = 2;
                }
                if (RadioButton3.Checked == true)
                {
                    ans = 3;
                }
                if (RadioButton4.Checked == true)
                {
                    ans = 4;
                }
                con.Open();
                ccmd = new SqlCommand("Select * from question where qid = " + qid + " and ans =" + ans,con);
               
                cdr = ccmd.ExecuteReader();
                if (cdr.HasRows)
                {
                    marks = marks + 1;

                }
                con.Close();
                count = count + 1;
                Response.Redirect("Panel.aspx?testttype=" + testtype + "&count=" + count + "&marks=" + marks);

            }
            else
            {
                msg.Text = "This was last question";
            }
        }

        protected void finish_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            totalmarks = n;
            string date = DateTime.Now.ToString();
            sqry = "Insert into results values ('" + uname + "','" + date + "','" + testtype + "','" + marks + "','" + totalmarks + "')";
            scmd = new SqlCommand(sqry, con);
            scmd.ExecuteNonQuery();
            msg.Text = "Wish you All the Best For Your Result";
            con.Close();
            Response.Write("<script>alert('Exam successfully submitted')</script>");
        }
    }
}