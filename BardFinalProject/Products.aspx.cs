using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BardFinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private Product selectedProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)HttpContext.Current.Session["loggedIn"] == true)
            {
                btnAddToCart.Visible = true;
                DetailsView1.Fields[4].Visible = false;
            }
            else
            {
                btnAddToCart.Visible = false;
                DetailsView1.Fields[4].Visible = true;
            }

            if (GridView1.SelectedValue != null)
            {
                DataView productTable = (DataView)AccessDataSource2.Select(DataSourceSelectArguments.Empty);
                productTable.RowFilter = "ProductID = " + GridView1.SelectedValue;
                DataRowView row = productTable[0];

                selectedProduct = new Product();
                selectedProduct.ProductID = (int)row["ProductID"];
                selectedProduct.Name = row["ProductName"].ToString();
                selectedProduct.Category = row["Category"].ToString();
                selectedProduct.Price = (decimal)row["Price"];
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Cart cart = Cart.getCart();

            cart.AddProduct(selectedProduct);

            HttpContext.Current.Response.Redirect("Cart.aspx");
        }
    }
}