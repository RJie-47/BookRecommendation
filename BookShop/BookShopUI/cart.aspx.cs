using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookShopBLL;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindCartItems();
        }
    }
   void BindCartItems()
    {
        ShoppingCart cart = (ShoppingCart)Session["mycart"];
        if(cart!=null)
        {
            this.ItemList.DataSource = cart.GetAllItems();
            this.ItemList.DataBind();
        }
    }

    protected void LinkButtonCARTNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("cartnext.aspx");
    }
}