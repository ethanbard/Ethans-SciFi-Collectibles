using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace BardFinalProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private Cart cart;

        protected void Page_Load(object sender, EventArgs e)
        {
            cart = Cart.getCart();
            DisplayProducts();
        }

        protected void DisplayProducts()
        {
            for (int i = 0; i < cart.Count; i++)
            {
                lstCart.Items.Add(new ListItem(cart[i].Name + " -- $" + cart[i].Price));
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(lstCart.SelectedIndex);
            lstCart.Items.Clear();
            DisplayProducts();
        }

        protected void txtReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Customer currentUser = (Customer)HttpContext.Current.Session["currentUser"];

            AccessDataSource1.InsertParameters["CustomerID"].DefaultValue = currentUser.CustomerID.ToString();
            AccessDataSource1.InsertParameters["OrderDate"].DefaultValue = DateTime.Now.ToString();
            AccessDataSource1.InsertParameters["TotalCost"].DefaultValue = cart.TotalCost.ToString();

            AccessDataSource1.Insert();

            cart.Clear();
            
            Response.Redirect("Orders.aspx");
        }
    }
}