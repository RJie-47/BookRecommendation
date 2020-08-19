<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="css/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="maincontainer">

        <div id="logintitle">
            <img src="images/loginlabel.gif" alt="" />
        </div>
        <div id="logincontent">
            <div id="loginc">
                <div id="loginc_content">
                    <p>
                        <b>会员登录  请正确填写认证信息</b>
                    </p>
                    <div class="loginitem">
                        <span class="loginlabel">用户Email:</span>
                        <input type="text" id="txtEmail" runat="server"/>
                    </div>
                    <div class="loginitem">
                        <span class="loginlabel">用户密码:</span>
                        <input type="password" id="txtPassWord" runat="server"/>
                    </div>
                    <div class="loginitem">
                        <span class="loginlabel">验 证 码：</span>
                        <input type="text" id="txtValidCode" runat="server"/>
                        <img src="images/vcode.bmp" alt="" />
                        
                    </div>
                    <p>
                        <%--<img src="images/loginkey.gif" alt="" />test--%>
                        <asp:ImageButton ID="ImageButton1" runat="server" imageUrl="~/images/loginkey.gif" OnClick="ImageButton1_Click" />
                    </p>
                </div>
            </div>
            <div id="loginm">
                <img src="images/login-1.gif" alt="" />
            </div>
            <div id="loginr">
                <b>如果你不是会员，请注册</b><br />
                <span>注册之后您可以：<br />
                </span>1. 保存您的个人资料<br />
                2. 收藏您关注的商品<br />
                3. 享受会员积分制度<br />
                4. 订阅本店商品信息<br />
                <a href="#">
                    <img src="images/regkey.gif" border="0" alt="" />
                </a>
            </div>
        </div>


    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="Server">
</asp:Content>

