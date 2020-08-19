<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/myaccount.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
			<div id="maincontainer">

				<div id="menu">
					<div class="member_border">
						<div class="member_title">
							会员中心
						</div>
						<div class="menu_nav">
							<ul>
								<li>
									<a href="myaccount_changepwd.aspx" target="menucontent">修改密码</a>
								</li>
								<li>
									<a href="myaccount_rbp.aspx" target="menucontent">收货地址</a>
								</li>
								<li>
									<a href="myaccount_orders.aspx" target="menucontent">我的订单</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="quita">
						<a href="#"><img src="images/left-img1.gif" alt="" /></a>
					</div>
				</div>
				<div id="operate">
					<iframe scrolling="yes" frameborder="0" marginwidth="0" marginheight="0" name="menucontent" src="myaccount_orders.html">
               </iframe>
				</div>

			</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" Runat="Server">
</asp:Content>

