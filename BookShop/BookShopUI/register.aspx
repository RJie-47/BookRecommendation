<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="css/register.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="maincontainer">

        <div id="registertitle">
            <img src="images/registerlabel.gif" alt="" />
        </div>
        <div id="registercontainer">
            <div id="registercontent">
                <p>
                    <span>用户Email:</span><input type="text"  id="txtEmail" runat="server"/>
                </p>
                <p>
                    <span>设置密码:</span><input type="password" id="txtPassWord" runat="server"/>
                </p>
                <p>
                    <span>确认密码:</span><input type="password" id="txtRepassWord" runat="server"/>
                </p>
                <p>
                    <span>手机号码:</span><input type="text" id="txtPhoneNum" runat="server"/>
                </p>
                <p>
                    <span>验证码:</span>
                    <input type="text" id="txtValidCode" runat="server"/>
                    <img src="images/vcode.bmp" alt="" />
                </p>
                <p class="btnpos">
                    <span>&nbsp;</span>
                    <%--<img src="images/register.png" alt="注册" />--%>
                    <asp:ImageButton ID="btnRegister" runat="server" imageUrl="~/images/register.png" style="width:100px;height:28px;border:0" OnClick="btnRegister_Click"/>
                </p>

            </div>
        </div>


    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="Server">
</asp:Content>

