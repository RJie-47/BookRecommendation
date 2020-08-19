<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master2.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content5" runat="Server">
    <link href="css/details.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="WriteContent" runat="Server">
    

        <div id="bookdetails">
            <div id="bookname">
                <h1><asp:Label ID="txtBookName" runat="server" Text=""></asp:Label></h1>
            </div>
            <div id="preview">
                <div id="spec-n1">
                   <%-- <img src="images/books/{0}" alt="" />--%>
                    <img src="~/images/books/{0}"  alt="" runat ="server" id="imgbig" />
                </div>
            </div>
            <div id="descript">
                <div id="summary">
                    <ul>
                        <%--<li><span>作 者：</span>（英）罗琳（Rowling，J.K） 著 马爱农，马爱新 译 </li>--%>
                        <li><span>作 者：</span> <asp:Label ID="lableAuthor" runat="server" Width="233px"></asp:Label></li>
                        <li><span>出 版 社：</span> <asp:Label ID="Labelchuban" runat="server" Width="230px"></asp:Label></li>
                        <li><span>ＩＳＢＮ：</span><asp:Label ID="LabelISBN" runat="server" Width="225px"></asp:Label></li>
                        <li><span>出版时间：</span><asp:Label ID="Labelchubandate" runat="server" Width="227px"></asp:Label></li>
                    </ul>
                </div>
                <div id="bprice">
                    <ul>
                        <li>定&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价： <del>
                            <asp:Label ID="LabelPrice" runat="server" Text=""></asp:Label></del> </li>
                        <li>售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价： <span class="sold_price">
                            <asp:Label ID="LabelSoldPrice" runat="server" Text=""></asp:Label></span> <span
                            class="sold_dis">
                                <asp:Label ID="LabelSoldDiscount" runat="server" Text=""></asp:Label></span> </li>
                    </ul>
                </div>
                <div id="choose">
                    <dl class="amount">
                        <dt>我要买：</dt>
                        <dd>
                            <a href="javascript:void(0)" class="reduce">-</a>
                            <input type="text" value="1" />
                            <a href="javascript:void(0)" class="add">+</a>
                        </dd>
                        <dd class="ben">本</dd>
                    </dl>
                    <div class="btns">
                        <a href="javascript:void(0)" class="btn_append" runat="server" onserverclick="btnAppend_ServerClick" id="btnAppend">添加到购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="bookdes">
            <div class="mt">
                <h2>内容简介</h2>
            </div>
            <div class="mc">
                <div class="con">
                    <p>
                        <asp:Label ID="LabelDescription" runat="server" Text=""></asp:Label>
                    </p>
                </div>
            </div>
        </div>


    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

