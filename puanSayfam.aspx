<%@ Page Language="C#" AutoEventWireup="true" CodeFile="puanSayfam.aspx.cs" Inherits="puanSayfam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Öğrenci numarasını giriniz:<asp:TextBox runat="server" ID="tbOgrenciNumarasi" />

            <asp:Button Text="Bilgileri Getir" runat="server" CssClass="btn btn-danger"
                ID="btGetir" OnClick="btGetir_Click" /><asp:DropDownList runat="server" ID="ddlDers" />
            <asp:Label ID="lbHata" runat="server" Visible="false" ForeColor="Red" Font-Bold="true" Text="Yazılı veya performans notu 0-100 aralığında olmalı!..."></asp:Label>
        </div>

        



        <asp:Panel runat="server" ID="pnBilgiler" Visible="false">
       
            <table>
            <tr>
                <td>1. yazılı</td>
                <td>2. yazılı</td>
                <td>3. yazılı</td>
                <td>1. performans</td>
                <td>2. performans</td>
                <td>3. performans</td><td></td>

            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="tbY1"  Width="70px"/></td>
                <td>
                    <asp:TextBox runat="server" ID="tbY2" Width="70px"/></td>
                <td>
                    <asp:TextBox runat="server" ID="tbY3"  Width="70px"/></td>
                <td>
                    <asp:TextBox runat="server" ID="tbP1"  Width="70px"/></td>
                <td>
                    <asp:TextBox runat="server" ID="tbP2"  Width="70px"/></td>
                <td>
                    <asp:TextBox runat="server" ID="tbP3"  Width="70px"/></td>
                <td>
                    <asp:Button Text="Güncelleştir..." ID="btPuanKaydet" runat="server" 
                        OnClick="btPuanKaydet_Click" /></td>
            </tr>
        </table>
            
             </asp:Panel>





    </form>
</body>
</html>
