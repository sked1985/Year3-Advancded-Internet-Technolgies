<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MusicLibray._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
     <hgroup class="title">
        <h2>Browse our Albums and add your favorite!!</h2>
    </hgroup>

    <asp:GridView ID="gvAlbums" runat="server"  Width="400px"></asp:GridView><br /><br/>    
    <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
    :<br />
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblLabel" runat="server" Text="Label"></asp:Label>
    :<br />
    <asp:DropDownList ID="ddlLabel" runat="server" ></asp:DropDownList>
    <br />
    Band:<br />
    <asp:DropDownList ID="ddlBand" runat="server"></asp:DropDownList>
    <br />
    Genre:<br />
    <asp:DropDownList ID="ddlGenre" runat="server"></asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lblRelDate" runat="server" Text="Release Date"></asp:Label>
    :<br />
    <asp:TextBox ID="txtRelDate" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblImage" runat="server" Text="Image"></asp:Label>
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtImage" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblDescr" runat="server" Text="Description"></asp:Label>
    :<br />
    <asp:TextBox ID="txtDescr" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click1" />
     <input runat="server" id="hidId" type="hidden" />
    <asp:Button ID="btnPrevious" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
    <br />
    <br />       
</asp:Content>
