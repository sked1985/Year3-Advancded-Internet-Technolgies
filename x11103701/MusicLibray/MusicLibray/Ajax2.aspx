<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax2.aspx.cs" Inherits="MusicLibray.Ajax2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="sm" runat="server">
    </asp:ScriptManager>
        <asp:Button ID="btnShowModal" runat="server" Text="Show Modal" />
        <asp:Panel ID="pnlModal" runat="server" BorderColor="AliceBlue" BorderStyle="Solid" BorderWidth="2px" Width="300px" Height="100px">
        <br/><br/>
            <asp:Button ID="btnOk" runat="server" Text="Ok" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />

        </asp:Panel> 
    <asp:ModalPopupExtender ID="mpe" TargetControlId="btnShowModal"  OkControlID="btnOk"  CancelControlID="btnCancel"  PopupControlId="pnlModal" runat="server" DropShadow="true"></asp:ModalPopupExtender>
    </div>
    </form>
</body>
</html>
