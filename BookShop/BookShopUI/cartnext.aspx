<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="cartnext.aspx.cs" Inherits="cartnext" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/basic1.css" rel="stylesheet" />
    <link href="css/basic3.css" rel="stylesheet" />
    <link href="css/cartnext.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
            <div id="maincontainer">
                
           <div id="gw_top">
                <div class="gw_top_left">
                    <img src="images/cart_03.jpg" alt="" /></div>
                <div class="gw_top_left2">
                    <ul>
                        <li>
                            <img src="images/cart_61.jpg" alt="" /></li>
                        <li class="gw_top_left3">
                            <img src="images/cart_15.jpg" alt="" /></li>
                        <li class="arrow">
                            <img src="images/cart_62.jpg" alt="" /></li>
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
                    <h2>订单信息</h2>
                </div>
                <div class="gwbt_2">
                    <b>收货人详细资料</b>
                </div>
                <div class="gw_shwzl">
                    <div class="gw_shwzl_div">
                        <input type="radio" id="radioname" name="radioname" checked="checked" />
                        <label for="radiobutton">
                        </label>
                        陕西省西安市长安区三桥经济技术开发区疏导线58号 收货人:李四 电话：13348032921<font>[<a style="" href="#">删除</a>] [<a
                            style="" class="linkEdit" href="javascript:void(0);" id="18">编辑</a>]</font>
                    </div>
                    <div class="gw_shwzl_div">
                        <input type="radio" id="radio1" name="radioname" />
                        <label for="radiobutton">
                        </label>
                        四川省成都市某街道某小区 收货人:张三  电话：13948032921<font>[<a style="" href="#">删除</a>] [<a
                            style="" class="linkEdit" href="javascript:void(0);" id="A1">编辑</a>]</font>
                    </div>
                    <div class="gw_shwzl2">
                        <img src="images/cart_36.jpg" id="btn_add" alt="" />
                    </div>
                    <div id="divUserAddress">
                        <p>
                            填写正确的收货人详细资料，保证您收货的准确性。<span class="required">* 为必填项</span></p>
                        <p>
                            <span class="required">*</span> 地 区：
                            <select>
                                <option>四川</option>
                                <option>陕西</option>
                            </select>
                            <select>
                                <option>成都</option>
                                <option>德阳</option>
                            </select>
                        </p>
                        <p>
                            <span class="required">*</span> 邮政编码：
                            <input type="text" />
                        </p>
                        <p>
                            <span class="required">*</span> 电子邮件：
                            <input type="text" />
                        </p>
                        <p class="address">
                            <span class="required">*</span> 街道地址：
                            <input type="text" />
                        </p>
                        <p>
                            <span class="required">*</span> 收货姓名：
                            <input type="text" />
                        </p>
                        <p>
                            <span class="required">*</span> 收货手机：
                            <input type="text" />
                        </p>
                        <p class="btns">
                            <img src="images/cart_64.jpg" alt="" />
                            <img src="images/cart_65.jpg" alt="" />
                        </p>
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
                        <li class="row7">操作</li>
                    </ul>
                    <div id="book_collection">
                        <ul class="shoppingcart_list">
                            <li class="row00"><a href="#">
                                <img src="images/books/67d7720647fa.jpg" alt="" /></a> </li>
                            <li class="row11"><a href="#">哈利·波特与混血王子</a> </li>
                            <li class="row22"><span>￥58.00</span> </li>
                            <li class="row33"><span>￥39.10（55折）</span> </li>
                            <li class="row44"><span>￥18.90</span> </li>
                            <li class="row55">
                            <span>1</span>
                            </li>
                            <li class="row66"><span>￥39.10</span> </li>
                            <li class="row77"><a href="#">删除</a> </li>
                        </ul>
                        <ul class="shoppingcart_list">
                            <li class="row00"><a href="#">
                                <img src="images/books/4bdb19a1ae9c.jpg" alt="" /></a> </li>
                            <li class="row11"><a href="#">谁说菜鸟不会数据分析</a> </li>
                            <li class="row22"><span>￥59.00</span> </li>
                            <li class="row33"><span>￥41.20（70折）</span> </li>
                            <li class="row44"><span>￥17.80</span> </li>
                            <li class="row55">
                                <span>1</span>
                            </li>
                            <li class="row66"><span>￥41.20</span> </li>
                            <li class="row77"><a href="#">删除</a> </li>
                        </ul>
                    </div>
                    <div class="shoppingcart_total">
                        <p class="price">
                            金额总计： <span>￥</span> <span id="total_account">80.30</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            优惠总计： <span>￥</span> <span id="Span1">36.70</span>
                        </p>
                        <p id="balance">
                            <asp:LinkButton ID="LinkButtonNext" runat="server" Text="结算" BackColor="#FFCC00" BorderColor="#FFCC00" Font-Bold="True" Font-Size="XX-Large" Height="35px" OnClick="LinkButtonNext_Click" Width="100px"></asp:LinkButton>
                            <a class="goon" href="searchresult.html">继续购书</a>
                        </p>
                    </div>
                </div>
            </div>

            </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" Runat="Server">
</asp:Content>

