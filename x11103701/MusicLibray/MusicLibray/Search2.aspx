<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search2.aspx.cs" Inherits="MusicLibray.Search2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolKitScriptManager1" runat="server" EnablePageMethods="True">
        </asp:ToolkitScriptManager>
        <asp:Label ID="lblSearch" runat="server" Text="Search:" Width="100px"></asp:Label>
        <asp:TextBox ID="txtSearch" runat="server" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="View Details" OnClick="btnSearch_Click" />
        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" Enabled="True" TargetControlID="txtSearch" ServiceMethod="GetCompletionList">
        </asp:AutoCompleteExtender>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
    </div>
    </form>
    
</body>
</html>
