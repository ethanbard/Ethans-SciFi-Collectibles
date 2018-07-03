using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BardFinalProject
{
    public partial class Scifi : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["loggedIn"] == null)
            {
                bool loggedIn = false;
                HttpContext.Current.Session["loggedIn"] = loggedIn;
                HttpContext.Current.Session["loginButtonText"] = "Log In";
                HttpContext.Current.Session["loginTextboxEnabled"] = true;
                HttpContext.Current.Session["currentUser"] = new Customer();
            }
            else
            {
                btnLogIn.Text = HttpContext.Current.Session["loginButtonText"].ToString();
                txtUserName.Enabled = (bool)HttpContext.Current.Session["loginTextboxEnabled"];
                txtPassword.Enabled = (bool)HttpContext.Current.Session["loginTextboxEnabled"];

                if ((bool)HttpContext.Current.Session["loggedIn"] == true)
                {
                    Customer c = (Customer)HttpContext.Current.Session["currentUser"];
                    txtUserName.Text = c.UserName;
                }
            }
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            if ((bool)HttpContext.Current.Session["loggedIn"] == false)
            {
                try
                {
                    DataView customerTable = (DataView)AccessDataSource1.Select(DataSourceSelectArguments.Empty);
                    customerTable.RowFilter = "UserName = '" + txtUserName.Text + "'";
                    DataRowView row = customerTable[0];

                    if (txtPassword.Text == row["Password"].ToString())
                    {
                        Customer c = new Customer();
                        c.CustomerID = (int)row["CustomerID"];
                        c.Name = row["Name"].ToString();
                        c.Address = row["Address"].ToString();
                        c.City = row["City"].ToString();
                        c.State = row["State"].ToString();
                        c.ZipCode = row["ZipCode"].ToString();
                        c.Email = row["Email"].ToString();
                        c.UserName = row["UserName"].ToString();
                        c.Password = row["Password"].ToString();

                        HttpContext.Current.Session["currentUser"] = c;

                        HttpContext.Current.Session["loggedIn"] = true;

                        btnLogIn.Text = "Log Out";
                        HttpContext.Current.Session["loginButtonText"] = "Log Out";

                        txtUserName.Enabled = false;
                        txtPassword.Enabled = false;
                        HttpContext.Current.Session["loginTextboxEnabled"] = false;
                        lblError.Text = "";
                    }
                    else
                    {
                        lblError.Text = "Invalid Password";
                    }
                }
                catch (IndexOutOfRangeException)
                {
                    lblError.Text = "Invalid Username";
                }
            }
            else
            {
                HttpContext.Current.Session["loggedIn"] = false;

                btnLogIn.Text = "Log In";
                HttpContext.Current.Session["loginButtonText"] = "Log In";

                txtUserName.Enabled = true;
                txtPassword.Enabled = true;
                HttpContext.Current.Session["loginTextboxEnabled"] = true;
            }
        }
    }
}