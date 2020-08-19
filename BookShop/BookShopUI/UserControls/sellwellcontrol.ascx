<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sellwellcontrol.ascx.cs" Inherits="sellwellcontrol" %>

<div id="sellwell">
    <div id="swtitle">
        <h2>畅销书籍</h2>
        <div id="swextra">
            <a href='<%#Eval("BookID","details.aspx?bookid={0}") %>'>更多>></a>
        </div>
    </div>
    <div id="swcontent">
        <ul>
            <asp:Repeater ID="RepeaterSELLWELL" runat="server">
                <ItemTemplate>
                    <li>
                        <div class="bookimg">
                            <div class="i-img">
                                <%--<a href="details.aspx?bookid=061f6896b6b9" target="_blank">--%>
                                <a href='<%#Eval("BookID","details.aspx?bookid={0}") %>'>
                                    <%-- <img src="images/books/ee2037ecf484.jpg" alt="香巴拉的迷途：十四世达赖喇嘛人和事" /></a>--%>
                                    <img src='<%#Eval("BookSmallImageName","images/books/{0}")%>' alt="" /></a>
                            </div>
                        </div>
                        <div class="p-name">
                            <a href='<%#Eval("BookID", "details.aspx?bookid={0}") %>'>
                                <asp:Label ID="LabelBookName" runat="server" Text='<%#Eval("BookName") %>'></asp:Label>
                               </a>
                        </div>
                        <div class="p-market">
                            定价：<del><asp:Label ID="LabelPrice" runat="server" Text='<%#Eval("BookMarketPrice") %>'></asp:Label></del>
                        </div>
                        <div class="p-price">
                            优惠价：<strong><asp:Label ID="Labelsoldprice1" runat="server" Text='<%#Eval("BookSoldPrice") %>'></asp:Label></strong>
                        </div>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
            <%-- <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/652a8c4bfddd.jpg" alt="金陵十三钗：严歌苓最新长篇小说" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">金陵十三钗：严歌苓最新长篇小说</a>
                </div>
                <div class="p-market">
                    定价：<del>￥29.80</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥19.40</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/8c9a1eb2af6f.jpg" alt="罗马帝国衰亡史（传诵两百年迄今不衰）" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">罗马帝国衰亡史（传诵两百年迄今不衰）</a>
                </div>
                <div class="p-market">
                    定价：<del>￥36.80</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥22.10</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/a017ceff35c5.jpg" alt="珍藏周杰伦（大灌篮黑白版）" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">珍藏周杰伦（大灌篮黑白版）</a>
                </div>
                <div class="p-market">
                    定价：<del>￥40.00</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥13.00</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/32bd88542a43.jpg" alt="庄子的奔腾（王蒙与庄子思想缠绕燃烧）" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">庄子的奔腾（王蒙与庄子思想缠绕燃烧）</a>
                </div>
                <div class="p-market">
                    定价：<del>￥35.00</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥19.60</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/44a03ccc77fa.jpg" alt="蓝精灵3D电影剧照故事书（京东独家首发）" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">蓝精灵3D电影剧照故事书</a>
                </div>
                <div class="p-market">
                    定价：<del>￥15.80</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥10.30</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/cb552e94f25b.jpg" alt="零压力社交：内向者的轻松人脉术" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">零压力社交：内向者的轻松人脉术</a>
                </div>
                <div class="p-market">
                    定价：<del>￥29.80</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥18.20</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/e211fd0092a8.jpg" alt="民国就是这么生猛02：辛亥革命" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">民国就是这么生猛02：辛亥革命辛亥革命辛亥革命辛亥革命辛亥革命</a>
                </div>
                <div class="p-market">
                    定价：<del>￥42.00</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥27.10</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/bf468656d075.jpg" alt="革命与生意：辛亥革命中的商业与商人命运" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">革命与生意：辛亥革命中的商业与商人命</a>
                </div>
                <div class="p-market">
                    定价：<del>￥15.80</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥10.30</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/2a7bdb831bc1.jpg" alt="别对我说谎：FBI教你破解语言密码" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">别对我说谎：FBI教你破解语言密码</a>
                </div>
                <div class="p-market">
                    定价：<del>￥15.80</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥10.30</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/1251d8aa2bf0.jpg" alt="双响炮（套装共14册）" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">双响炮（套装共14册）</a>
                </div>
                <div class="p-market">
                    定价：<del>￥140.00</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥85.50</strong>
                </div>
            </li>
            <li>
                <div class="bookimg">
                    <div class="i-img">
                        <a href="details.html?bookid=061f6896b6b9" target="_blank">
                            <img src="images/books/d91021b9ffed.jpg" alt="苦难辉煌（套装上下册 金一南 著）" /></a>
                    </div>
                </div>
                <div class="p-name">
                    <a href="details.html?bookid=061f6896b6b9" target="_blank">苦难辉煌（套装上下册 金一南 著）</a>
                </div>
                <div class="p-market">
                    定价：<del>￥15.80</del>
                </div>
                <div class="p-price">
                    优惠价：<strong>￥10.30</strong>
                </div>
            </li>--%>
        </ul>
    </div>

</div>
