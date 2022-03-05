<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sayfam.aspx.cs" Inherits="gece_calismasi_sayfam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    İsim:<asp:TextBox runat="server" ID="tbIsim" /> <asp:Button Text="Ekle" 
            ID="btEkle" runat="server" OnClick="btEkle_Click" />
        <asp:Button Text="Sil" ID="btSil" runat="server" OnClick="btSil_Click" /><br />
        <asp:TextBox runat="server" id="tbIsimYeni"/>
        <asp:Button Text="Güncelleştir" ID="btGuncellestir" runat="server" 
            OnClick="btGuncellestir_Click" /><br />
        <asp:Button Text="Kaç tane kayıt var" runat="server" id="btKacTaneKayitVar" 
            OnClick="btKacTaneKayitVar_Click"/>
    </div>
    </form>
</body>
</html>
