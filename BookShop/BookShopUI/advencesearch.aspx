<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="advencesearch.aspx.cs" Inherits="advencesearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="css/advancesearch.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="maincontainer">

        <div id="searchtitle">
            <h2>高级搜索</h2>
        </div>
        <div id="searchcontainer">
            <div id="searchcontent">
                <p>
                    <span>书名:</span><input type="text" />
                </p>
                <p>
                    <span>作者:</span><input type="text" />
                </p>
                <p>
                    <span>出版社:</span><input type="text" />
                </p>
                <p>
                    <span>ISBN:</span><input type="text" />
                </p>
                <p>
                    <span>定价:</span>
                    <input type="text" class="text2" />
                    <span class="label2">至</span>
                    <input type="text" class="text2" />
                </p>

                <p class="btnpos">
                    <span>&nbsp;</span>
                    <asp:ImageButton ID="ImageButton1" runat="server" imageUrl="~/images/search.jpeg" style="width:100px;height:27px;border:0;margin:0"/>
                </p>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="Server">
</asp:Content>

