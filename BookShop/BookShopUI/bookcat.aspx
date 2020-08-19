<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="bookcat.aspx.cs" Inherits="bookcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="css/bookcat.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="maincontainer">

        <div id="cat_title">
            <h2>图书全部分类</h2>
        </div>
        <div class="mc">
            <dl>
                <dt>
                    <span>小说</span>
                    <b></b>
                </dt>
                <dd>
                    <em>
                        <a href="searchresult.aspx?catid=001">中国当代小说</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">中国现代小说</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">中国古典小说</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">四大名著</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">港澳台小说</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">网络小说</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">外国小说</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">侦探/悬疑/推理</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">惊悚/恐怖</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">魔幻/奇幻/玄幻</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">武侠</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">军事</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">情感/家庭/婚姻</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">宫廷</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">社会</a>
                    </em>
                </dd>
                <dd class="clr"></dd>
                <dt>
                    <span>青春文学</span>
                    <b></b>
                </dt>
                <dd>
                    <em>
                        <a href="searchresult.aspx?catid=001">校园</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">爱情/情感</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">叛逆/成长</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">悬疑/惊悚</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">娱乐/偶像</a>
                    </em>
                    <em>
                        <a href="searchresult.aspx?catid=001">爆笑/无厘头</a>
                    </em>

                </dd>

            </dl>
        </div>


    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="Server">
</asp:Content>

