using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookShopBLL;
using BookShopDAL;

public partial class sellwellcontrol : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindList();
        }
        
    }
    private void BindList()
    {
        BookBLL bookBLL = new BookBLL();
        this.RepeaterSELLWELL.DataSource = bookBLL.GetNewBooks(18);
        this.RepeaterSELLWELL.DataBind();
    }
}