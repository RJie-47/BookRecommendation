using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Write(this.txtEmail.Value);
        //Response.Write(this.txtPassWord.Value);

        //Response.Write(this.txtValidCode.Value);
        ////BookShopBLL.UserBLL bLL = new BookShopBLL.UserBLL();
        ////BookShopDAL.UserDAL dal = new BookShopDAL.UserDAL();
        //只管采集用户信息，打包成对象
        BookShopDAL.UserInfo infos = new BookShopDAL.UserInfo();
        infos.UserEmail = this.txtEmail.Value;
        infos.UserPass = this.txtPassWord.Value;
        infos.UserTel = this.txtPhoneNum.Value;
        //传给BLL，处理数据
        //先生成实例
        BookShopBLL.UserBLL ubll = new BookShopBLL.UserBLL();
        ubll.RegisterUser(infos);
        string res = ubll.RegisterUser(infos);
        //传统脚本语句,用alert弹出消息
        string alertmsg = string.Format("alter('{0}');", res);
        ClientScript.RegisterStartupScript(this.GetType(), "show", alertmsg,true);
    }
}