<%@ Control Language="C#" AutoEventWireup="true" CodeFile="newbookcontrol.ascx.cs" Inherits="newbookcontrol" %>

<div id="newbook">
    <div id="newtitle">
        <h2>新书速递</h2>
        <div id="newextra">
            <a href="#">更多>></a>
        </div>
    </div>
    <div id="newslide">
        <div id="carousel">
            <ul>

                <asp:Repeater ID="NBookList" runat="server">
                    <ItemTemplate>
                        <li>
                            <%--<a href="details.html?bookid=061f6896b6b9">--%>
                                <a href='<%#Eval("BookID","details.aspx?bookid={0}") %>'>
                                <%--<img src="images/books/061f6896b6b9.jpg" alt="" />--%>
                                <img src='<%#Eval("BookSmallImageName","images/books/{0}")%>' alt="" />
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
            <div class="clearfix"></div>
            <a id="prev" class="prev" href="#"></a>
            <a id="next" class="next" href="#"></a>
        </div>
    </div>

</div>
