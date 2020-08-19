using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string email = this.txtEmail.Value;
        string pass = this.txtPassWord.Value;
        //调用逻辑层
        BookShopBLL.UserBLL userbll = new BookShopBLL.UserBLL();
        if(userbll.UserLogin(email,pass))
        {
            Response.Write("可以");
            FormsAuthentication.SetAuthCookie(email, true);

        }
        else
        {
            Response.Write("不可以");
        }
    }
}