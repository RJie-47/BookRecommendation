<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/cart.css" rel="stylesheet" />
    <link href="css/basic2.css" rel="stylesheet" />
    <link href="css/basic3.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-top: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
            <div id="maincontainer">
                
        <div id="gw_top">
                <div class="gw_top_left">
                    <img src="images/cart_03.jpg" alt="" /></div>
                <div class="gw_top_left2">
                    <ul>
                        <li>
                            <img src="images/cart_06.jpg" alt="" /></li>
                        <li class="gw_top_left3">
                            <img src="images/cart_15.jpg" alt="" /></li>
                        <li class="arrow">
                            <img src="images/cart_08.jpg" alt="" /></li>
                        <li class="gw_top_left4">
                            <img src="images/cart_18.jpg" alt="" /></li>
                        <li class="last">
                            <img src="images/cart_10.jpg" alt="" /></li>
                    </ul>
                </div>
                <div class="gw_top_right">
                    <img src="images/cart_12.jpg" alt="" /></div>
            </div>
            <div class="gw2">
                <div class="gwbt_1">
                    <img src="images/cart_32.jpg" alt="" />
                </div>
          
                <div class="gwbt_3">
                    <b>书籍列表</b>
                </div>
                <div>
                    <ul class="shoppingcart_subject">
                        <li class="row1">书籍名称</li>
                        <li class="row2">原价</li>
                        <li class="row3">售价</li>
                        <li class="row4"><span>&nbsp;&nbsp;&nbsp;优惠&nbsp;&nbsp;&nbsp;</span></li>
                        <li class="row5">数量</li>
                        <li class="row6">小计</li>
                        <li class="row7">操作</li>
                    </ul>
                    <div id="book_collection">
                        
                        <asp:Repeater ID="ItemList" runat="server">
                        <ItemTemplate>
                        <ul class="shoppingcart_list">
                            <li class="row00"><a href="#">
                                <img src='<%#Eval("BookImg","images/books/{0}") %>' alt="" /></a> </li>
                            <li class="row11"><a href="#"><%#Eval("BookName") %></a> </li>
                            <li class="row22"><span>￥58.00</span> </li>
                            <li class="row33"><span>￥39.10（55折）</span> </li>
                            <li class="row44"><span>￥18.90</span> </li>
                            <li class="row55">
                                <input type="text" value='<%#Eval("Quantity") %>'/>
                                <a href="javascript:void(0);" class="add">+</a> <a href="javascript:void(0);" class="cut">
                                    -</a> </li>
                            <li class="row66"><span>￥39.10</span> </li>
                            <li class="row77"><a href="#">删除</a> </li>
                        </ul>

                        </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="shoppingcart_total">
                        <p class="price">
                            金额总计： <span>￥</span> <span id="total_account">80.30</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            优惠总计： <span>￥</span> <span id="Span1">36.70</span>
                        </p>
                        <p id="balance">
                            <%--<a class="clearing" id="checkout_btn" style="left: -15px; top: -13px">--%>
                                <asp:LinkButton ID="LinkButtonCARTNext" runat="server" Width="97px" BackColor="#FFCC00" BorderColor="#FFCC00" Font-Bold="False" Font-Names="Arial Black" Font-Size="X-Large" Height="23px" OnClick="LinkButtonCARTNext_Click" Text="订单信息" CssClass="auto-style1"></asp:LinkButton>
                            <%--</a>--%>                         
                            <a class="goon" href="searchresult.aspx">继续购书</a>
                        </p>
                    </div>
                </div>
            </div>
        

            </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" Runat="Server">
</asp:Content>

