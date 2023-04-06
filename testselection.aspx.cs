using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationProject
{
    public partial class testselection : System.Web.UI.Page
    {
        HttpCookie ck;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ck = Request.Cookies["cook"];
            if (ck == null)
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Panel.aspx?testtype=" + testlist.SelectedValue);
        }
    }
}