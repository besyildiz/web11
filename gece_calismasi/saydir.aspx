<%@ Page Language="C#" AutoEventWireup="true" CodeFile="saydir.aspx.cs" Inherits="gece_calismasi_saydir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button Text="-" ID="btEksilt" runat="server" OnClick="btEksilt_Click" />
        <asp:Label id="lbSonuc" runat="server" Text="1"/>
    <asp:Button Text="+" ID="btArttir" runat="server" OnClick="btArttir_Click" />
    </div>
    </form>
</body>
</html>
