using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookShopBLL;
using BookShopDAL;

public partial class details : System.Web.UI.Page
{
    string bid = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if((bid=Request.QueryString["bookid"])!=null)
        {
            BookBLL book = new BookBLL();
            BookInfo Info = book.GetBookInfoByID(bid);
            //接下来用控件一个一个替换掉
            this.txtBookName.Text = Info.BookName;
            this.imgbig.Src = string.Format("images/books/{0}", Info.BookBigImage);
            this.lableAuthor.Text = Info.BookAuthor;
            this.Labelchuban.Text = Info.BookPublisher;
            this.LabelISBN.Text = Info.BookISBN;
            this.Labelchubandate.Text = Convert.ToString(Info.BookPublishDate);
            this.LabelPrice.Text = Convert.ToString(Info.BookMarketPrice);
            this.LabelSoldPrice.Text = Convert.ToString(Info.BookSoldPrice);
            this.LabelDescription.Text = Info.BookDescription;
            this.LabelSoldDiscount.Text = Convert.ToString("("+Info.BookDiscount+")"+"折");
        }
    }
    ShoppingCart cart = null;
    //从session中取出购物车

    protected void btnAppend_ServerClick(object sender, EventArgs e)
    {
        ShoppingCart cart = null;
        //从session中取出购物车
        cart = (ShoppingCart)Session["mycart"];
        if (cart == null)
        {
            cart = new ShoppingCart();
        }
            cart.AddItem(bid);
            //保存购物车，把他写回Session
            Session["mycart"] = cart;
            //跳到购物车
            Response.Redirect("cart.aspx");

        
    }
}