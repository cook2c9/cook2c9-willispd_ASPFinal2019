
/*
 * Patrick Willison and Connor Cook
 * (19SS-Full) WEB SERVER APPLICATION DEV (001) 2191-1_34IT3047C001
 * Assignment:Final exam
 * Due 5/01/2019
 * 
 * In this assignment we developed a web page called kroMart, this webpage is Responsible for creating orders
 * Adding products,tracking products and reviewing transactions
 * 
 * */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFinal
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFindStore_Click(object sender, EventArgs e)
        {
            Session["LoyaltyNumber"] = tbLoyaltyNumber.Text; //adds the loyalty number to a session
            Session["StoreName"] = ddlStore.SelectedValue; //Adds the selected store to the session
            Response.Write("does this work" + Session["StoreName"]);//a test statement to test session variables
            Response.Redirect("Orders.aspx");//moves to the orders page, after storing all of the session variables

        }
    }
}