
using BookShopBLL;
using BookShopDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newbookcontrol : System.Web.UI.UserControl
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="!IsPostBack">防止页面刷新时重新绑定数据</param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            BindList();
        }
    }

    private void BindList()
    {
        BookBLL bookBLL = new BookBLL();
        this.NBookList.DataSource = bookBLL.GetNewBooks(6);
        this.NBookList.DataBind();
    }
}