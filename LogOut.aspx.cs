using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationProject
{
    public partial class LogOut : System.Web.UI.Page
    {
     

        HttpCookie ck;
        protected void Page_Load(object sender, EventArgs e)
        {
            //ad = Request.Cookies["acook"];
            ck = Request.Cookies["cook"];
            
            //ad.Expires = DateTime.Now.AddDays(-1);
            ck.Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Login.aspx");
        }
    }
}