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
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStatusOpenClosed.Text = Session["OrderStatus"].ToString();
            if (!Page.IsPostBack)
            {
                var list = (List<String>)Session["FinalProductList"];

                ddlOrderNum.Items.Add(Session["OrderNumber"].ToString());//adds items to the drop down list of orders

                foreach (var x in list)
                {
                    lbSelectedProducts.Items.Add(x);
                    //Response.Write(x);-- test for Product storage
                }
            }
        }

        protected void btnCloseOrder_Click(object sender, EventArgs e)//Close the order
        {
            Session["OrderStatus"] = "Closed";
            lblStatusOpenClosed.Text = Session["OrderStatus"].ToString();
        }
        protected void btnReopenOrder_Click(object sender, EventArgs e)//Open the order
        {
            Session["OrderStatus"] = "Open";
            lblStatusOpenClosed.Text = Session["OrderStatus"].ToString();
        }
    }
}