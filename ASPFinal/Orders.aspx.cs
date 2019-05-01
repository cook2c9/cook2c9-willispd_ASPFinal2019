
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

    public partial class Orders : System.Web.UI.Page
    {
        public String SelectedProducts;//Do not keep in this form!
        Random rnd = new Random();
        //var list = (List<String>)Session["FinalProductList"];--this will call the sesssion back
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSelectedStore.Text = Session["StoreName"].ToString();
        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {

            SelectedProducts = ddlProducts.SelectedValue;

            int x = Convert.ToInt32(tbQuantity.Text);
            if (x > 0)
            {

                //product num is the qty field and qtn is the selected product
                //Add items to the list with a for loop
                for (int ProductNum = x; ProductNum > 0; ProductNum--)
                {
                    //Response.Write(SelectedProducts);--Testing for loop
                    lbSelectedItems.Items.Add(SelectedProducts);//adds to the list box
                }
            }
            else if (Convert.ToInt32(tbQuantity.Text) == 0)
            {

                lbSelectedItems.Items.Add(SelectedProducts);//adds if the value is 0
            }

        }


        protected void btnRemoveSelected_Click(object sender, EventArgs e)
        {
            SelectedProducts = lbSelectedItems.SelectedValue;

            lbSelectedItems.Items.Remove(SelectedProducts);//remove one item

        }


        protected void btnRemoveAll_Click(object sender, EventArgs e)
        {
            lbSelectedItems.Items.Clear();//remove all items
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            List<string> MultiProducts = new List<string>();//Do not keep in this form!--list of products to test

            int OrderNumber = rnd.Next(1, 5000);         //Generate a random order number and store into the session variable
            Session["OrderNumber"] = OrderNumber;        //Store the Order Number


            foreach (var v in lbSelectedItems.Items)
            {
                //  Response.Write(v);
                MultiProducts.Add(v.ToString());
            }

            Session["FinalProductList"] = MultiProducts; //Store the List
            var list = (List<String>)Session["FinalProductList"];

            foreach (var x in list)
            {
                Response.Write(x);
            }
            Response.Redirect("ReviewOrders.aspx");
        }


        protected void lbSelectedItems_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void tbQuantity_TextChanged(object sender, EventArgs e)
        {

        }
    }
}