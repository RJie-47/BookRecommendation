<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master2.master" AutoEventWireup="true" CodeFile="searchresult.aspx.cs" Inherits="searchresult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content5" Runat="Server">
    <link href="css/searchresult.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="WriteContent" Runat="Server">
    <div id="content">
        
       <div id="filter">
                    <div class="fore">
                        排序：
                    </div>
                    <ul class="orderitem">
                        <li><b></b><a href="#">价格</a> <span></span></li>
                        <li><b></b><a href="#">出版时间</a> <span></span></li>
                    </ul>
                    <span class="clr"></span>
                </div>
                <div class="pagenation">
                    <div class="pagein">
                        <span class="prev-disabled">上一页</span><b></b> <a class="current" href="#">1</a>
                        <a href="#">2</a> <a href="#">3</a> <span class="text">...</span> <a href="#">33</a>
                        <a class="next">下一页<b></b></a>
                    </div>
                </div>
                <div id="booklist">
                    <div class="bookitem">
                        <div class="bookimg">
                            <div class="i_img">
                                <a href="#">
                                    <img src="images/books/67d7720647fa.jpg" alt="" /></a>
                            </div>
                        </div>
                        <dl>
                            <dt class="bname"><a href="#" target="_blank">哈利·波特与混血王子</a> </dt>
                            <dd>
                                <div class="pinfo">
                                    <span class="ptitle">作者：</span> <span class="pnote">（英）罗琳（Rowling，J.K） 著，马爱农，马爱新 译</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版社：</span> <span class="pnote">人民文学出版社</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版时间：</span> <span class="pnote">2005年10月</span>
                                </div>
                                <div class="pinfo">
                                    <div class="mark_price">
                                        定价： <del>￥58.00</del>
                                    </div>
                                    售价：<span class="sold_price">￥31.90</span><span class="sold_dis">（55折）</span>
                                </div>
                                <div class="btns">
                                    <a href="#" class="btnappend"></a>                   
                                    <a href="#" class="btn-coll"></a>
                                </div>
                            </dd>
                        </dl>
                        <span class="clr"></span>
                    </div>
                    <div class="bookitem">
                        <div class="bookimg">
                            <div class="i_img">
                                <a href="#">
                                    <img src="images/books/061f6896b6b9.jpg" alt="" /></a>
                            </div>
                        </div>
                        <dl>
                            <dt class="bname"><a href="#" target="_blank">藏地密码2</a> </dt>
                            <dd>
                                <div class="pinfo">
                                    <span class="ptitle">作者：</span> <span class="pnote">何马著</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版社：</span> <span class="pnote">重庆出版社</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版时间：</span> <span class="pnote">2005年10月</span>
                                </div>
                                <div class="pinfo">
                                    <div class="mark_price">
                                        定价： <del>￥28.00</del>
                                    </div>
                                    售价：<span class="sold_price">￥15.20</span><span class="sold_dis">（55折）</span>
                                </div>
                                <div class="btns">
                                    <a href="#" class="btnappend"></a>                   
                                    <a href="#" class="btn-coll"></a>
                                </div>
                            </dd>
                        </dl>
                        <span class="clr"></span>
                    </div>
                    <div class="bookitem">
                        <div class="bookimg">
                            <div class="i_img">
                                <a href="#">
                                    <img src="images/books/7e50f7952706.jpg" alt="" /></a>
                            </div>
                        </div>
                        <dl>
                            <dt class="bname"><a href="#" target="_blank">暮光之城：新月</a> </dt>
                            <dd>
                                <div class="pinfo">
                                    <span class="ptitle">作者：</span> <span class="pnote">（美）梅尔 著，龚萍，张雅琳，李俐 译    
</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版社：</span> <span class="pnote">接力出版社</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版时间：</span> <span class="pnote">2008年9月</span>
                                </div>
                                <div class="pinfo">
                                    <div class="mark_price">
                                        定价： <del>￥32.00</del>
                                    </div>
                                    售价：<span class="sold_price">￥21.50</span><span class="sold_dis">（68折）</span>
                                </div>
                                <div class="btns">
                                    <a href="#" class="btnappend"></a>                   
                                    <a href="#" class="btn-coll"></a>
                                </div>
                            </dd>
                        </dl>
                        <span class="clr"></span>
                    </div>
                    <div class="bookitem">
                        <div class="bookimg">
                            <div class="i_img">
                                <a href="#">
                                    <img src="images/books/275dfbd3afd0.jpg" alt="" /></a>
                            </div>
                        </div>
                        <dl>
                            <dt class="bname"><a href="#" target="_blank">魔鬼积木白垩纪往事</a> </dt>
                            <dd>
                                <div class="pinfo">
                                    <span class="ptitle">作者：</span> <span class="pnote">刘慈欣 著</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版社：</span> <span class="pnote">长江文艺出版社</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版时间：</span> <span class="pnote">2008年11月</span>
                                </div>
                                <div class="pinfo">
                                    <div class="mark_price">
                                        定价： <del>￥24.00</del>
                                    </div>
                                    售价：<span class="sold_price">￥12.40</span><span class="sold_dis">（52折）</span>
                                </div>
                                <div class="btns">
                                   <a href="#" class="btnappend"></a>                   
                                    <a href="#" class="btn-coll"></a>
                                </div>
                            </dd>
                        </dl>
                        <span class="clr"></span>
                    </div>
                    <div class="bookitem">
                        <div class="bookimg">
                            <div class="i_img">
                                <a href="#">
                                    <img src="images/books/1b6d9b13934c.jpg" alt="" /></a>
                            </div>
                        </div>
                        <dl>
                            <dt class="bname"><a href="#" target="_blank">德库拉（惊情四百年）</a> </dt>
                            <dd>
                                <div class="pinfo">
                                    <span class="ptitle">作者：</span> <span class="pnote">（爱尔兰）布拉姆·斯托克 著，高凯 译</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版社：</span> <span class="pnote">辽宁教育出版社</span>
                                </div>
                                <div class="pinfo">
                                    <span class="ptitle">出版时间：</span> <span class="pnote">2011年4月</span>
                                </div>
                                <div class="pinfo">
                                    <div class="mark_price">
                                        定价： <del>￥28.80</del>
                                    </div>
                                    售价：<span class="sold_price">￥16.40</span><span class="sold_dis">（57折）</span>
                                </div>
                                <div class="btns">
                                    <a href="#" class="btnappend"></a>                   
                                    <a href="#" class="btn-coll"></a>
                                </div>
                            </dd>
                        </dl>
                        <span class="clr"></span>
                    </div>
                </div>
                <div class="pagenation">
                    <div class="pagein">
                        <span class="prev-disabled">上一页</span><b></b> <a class="current" href="#">1</a>
                        <a href="#">2</a> <a href="#">3</a> <span class="text">...</span> <a href="#">33</a>
                        <a class="next">下一页<b></b></a>
                    </div>
                </div>
            

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

