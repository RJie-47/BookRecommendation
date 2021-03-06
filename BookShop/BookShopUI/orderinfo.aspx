﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="orderinfo.aspx.cs" Inherits="orderiinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/orderinfo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <body>
   
        <div id="wrapper">
            <div id="header">
                <div id="headerl">
                    <a href="index.html"><img src="images/logo.png" alt="淘书屋" /></a>
                </div>
                <div id="headerr">
                    <div id="headnav">
                        <ul>
                            <li>
                                <a href="#">帮助</a>
                            </li>
                            <li>
                                <a href="register.html">注册</a>
                            </li>
                            <li>
                                <a href="login.html">登录</a>
                            </li>
                        </ul>
                    </div>
                    <div id="searchbox">
                        <input type="text" size="40" class="searchtext" />
                        <input type="image" src="images/searchbtn.gif" />
                        <input type="image" src="images/adsearchbtn.gif" />
                    </div>
                </div>
            </div>
            <div id="navigation">
                <div id="navleft">
                    <img src="images/menu_left.gif" alt="left" />
                </div>
                <div id="navcontent">
                    <a class="nav" href="index.html">首页</a> │
					<a class="nav" href="searchresult.html">全部图书</a> │
					<a class="nav" href="bookcat.html">图书分类</a> │
					<a class="nav" href="myaccount.html">我的帐户</a> │
					<a class="nav" href="cart.html">购物车</a>│
					<a class="nav" href="#">帮助中心</a> │
					<a class="nav" href="#">联系我们</a>
                </div>
                <div id="navright">
                    <img src="images/menu_right.gif" alt="right" />
                </div>
            </div>
            <div id="maincontainer">
                
       <div class="gw2">
                <div class="gwbt_1">
                    <h2>
                        订单号：4692222650（交易成功）订单时间：2010-12-17 16:32</h2>
                </div>
                <div class="gwbt_2">
                    <b>收货人详细信息</b>
                </div>
                <div class="gw_shwzl">
                    <div class="gw_shwzl_div">
                        <span>李四，陕西省西安市长安区三桥经济技术开发区疏导线58号，710614，13348032921</span>
                    </div>
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
                        <!--<li class="row7">操作</li>-->
                    </ul>
                    <div id="book_collection">
                        <ul class="shoppingcart_list">
                            <li class="row00"><a href="#">
                                <img src="images/books/67d7720647fa.jpg" alt="" /></a> </li>
                            <li class="row11"><a href="#">哈利·波特与混血王子</a> </li>
                            <li class="row22"><span>￥58.00</span> </li>
                            <li class="row33"><span>￥39.10（55折）</span> </li>
                            <li class="row44"><span>￥18.90</span> </li>
                            <li class="row55"><span>1</span> </li>
                            <li class="row66"><span>￥39.10</span> </li>
                            <!--<li class="row77"><a href="#">删除</a> </li>-->
                        </ul>
                        <ul class="shoppingcart_list">
                            <li class="row00"><a href="#">
                                <img src="images/books/4bdb19a1ae9c.jpg" alt="" /></a> </li>
                            <li class="row11"><a href="#">谁说菜鸟不会数据分析</a> </li>
                            <li class="row22"><span>￥59.00</span> </li>
                            <li class="row33"><span>￥41.20（70折）</span> </li>
                            <li class="row44"><span>￥17.80</span> </li>
                            <li class="row55"><span>1</span> </li>
                            <li class="row66"><span>￥41.20</span> </li>
                            <!--<li class="row77"><a href="#">删除</a> </li>-->
                        </ul>
                    </div>
                    <div class="shoppingcart_total">
                        <p class="price">
                            金额总计： <span>￥</span> <span id="total_account">80.30</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            优惠总计： <span>￥</span> <span id="Span1">36.70</span>
                        </p>
                     
                    </div>
                </div>
            </div>
            </div>
            <div id="footer">
                <ul>
                    <li>地址：成都东软学院C2三楼 <span>|</span> 邮政编码:611844 <span>|</span> <span>电话：028-82878185</span><span>|</span> 版权所有：成都东软黄波老师
                    </li>
                    <li>Copyright 2011-2019 All Rights Reserved&nbsp; 川ICP备09073713号</li>
                </ul>
            </div>
        </div>
   
     <script>
			/*注:以下的代表只是在Demo中起演示作用,与实际项目是无关的*/
			var btnSearch = document.querySelectorAll("#searchbox input")[1];
			btnSearch.onclick = function(e) {
				e.preventDefault = false;
				location.href = "searchresult.html";
			}
			var btnAdvanceSearch = document.querySelectorAll("#searchbox input")[2];
			btnAdvanceSearch.onclick = function() {
				location.href = "advancesearch.html";
			}
		</script>
    

</body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" Runat="Server">
</asp:Content>

