<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search1.aspx.cs" Inherits="MusicLibray.Search1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search1</title>
    <script type="text/javascript">
        function DoSearch() {
            MusicLibrary.MusicLibraryService.GetAlbumsByTitle($get("searchString").value, DoCallBack);
        }

        function DoCallBack(result) {
            for (var i = 0; i < result.length; i++) {
                $get("resultsDiv").innerHTML += result[i] + "<br />";
            }

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/MusicLibraryService.asmx" />

        </Services>
        </asp:ScriptManager>  
      <div>
    <input id="searchString" type="text" /><input type="button" value="Search" onclick="DoSearch();" />
      </div>
        <div id="resultsDiv"></div>
    </form>
</body>
</html>
