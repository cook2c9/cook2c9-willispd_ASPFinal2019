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
    public partial class ReviewOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStatusOpenClosed.Text = Session["OrderStatus"].ToString();
            lblOrderNumber.Text = Session["OrderNumber"].ToString();
            var list = (List<String>)Session["FinalProductList"];


            foreach (var x in list)
            {
                lbYourProducts.Items.Add(x);
                // Response.Write(x); //tests the list
            }

        }

        protected void btnTemp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }

        protected void btnBackToFront_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}