<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="DersEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>Dersin adı: 
          <asp:TextBox runat="server" ID="tbDersAdi" CssClass="bg-danger text-white" />

             <asp:Button Text="Kaydet" runat="server" ID="btKaydet" CssClass="btn-dark" 
                OnClick="btKaydet_Click" />     
             
        </div><br /><br />
        <asp:GridView ID="gv1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
        
                <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:webConnectionString.ProviderName %>"  
            SelectCommand="SELECT * FROM [dersler] order by id desc "></asp:SqlDataSource>
    </form>
</body>
</html>
