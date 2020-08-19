<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master2.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Register Src="~/UserControls/newbookcontrol.ascx" TagPrefix="uc1" TagName="newbookcontrol" %>
<%@ Register Src="~/UserControls/reportcontrol.ascx" TagPrefix="uc1" TagName="reportcontrol" %>
<%@ Register Src="~/UserControls/slidecontrol.ascx" TagPrefix="uc1" TagName="slidecontrol" %>
<%@ Register Src="~/UserControls/sellwellcontrol.ascx" TagPrefix="uc1" TagName="sellwellcontrol" %>





<asp:Content ID="Content1" ContentPlaceHolderID="Content5" Runat="Server">
    <link href="css/index.css" rel="stylesheet" />
    <link href="css/carousel_slide.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="WriteContent" Runat="Server">
    <uc1:slidecontrol runat="server" id="slidecontrol" />

    <uc1:reportcontrol runat="server" id="reportcontrol" />

    <uc1:newbookcontrol runat="server" id="newbookcontrol" />

    <uc1:sellwellcontrol runat="server" id="sellwellcontrol" />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script src="js/jquery-1.9.0.min.js"></script>
    <script src="js/jquery.carouFredSel-6.0.4-packed.js"></script>
    <script src="js/indexslide.js"></script>
</asp:Content>

