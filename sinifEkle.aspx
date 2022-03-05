<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sinifEkle.aspx.cs" Inherits="sinifEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>

        Sınıfın ismi:<asp:TextBox runat="server" ID="tbSinif" CssClass="text-capitalize text-danger" /> 
        <asp:Button Text="Ekle" ID="btEkle" runat="server" CssClass="btn btn-dark" 
            OnClick="btEkle_Click" />

             <asp:Button Text="Sil" ID="btSil" runat="server" CssClass="btn btn-dark" OnClick="btSil_Click" 
        /><asp:Label id="lbKayitYok" ForeColor="Red" Font-Bold="true" Visible="false" runat="server" />

        <asp:GridView ID="gvSinif" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="sinifDS" CssClass="table table-danger" PageSize="50">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="adi" HeaderText="Sınıfın Adı" SortExpression="adi" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sinifDS" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:webConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [sinif]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
