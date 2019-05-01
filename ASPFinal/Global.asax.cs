using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ASPFinal
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Session["LoyaltyNumber"] = 0;//stored loyalty number
            Session["LoyaltyNumber"] = 0;//stored loyalty number
            Session["StoreName"] = "";//Stored StoreName
            Session["OrderNumber"] = 0;//Stored Order number
            Session["FinalProductList"] = "";//stored list
            Session["OrderStatus"] = "Open";
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}