<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ogrenciEkle.aspx.cs" Inherits="ogrenciEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <tr>
                    <td>İsmin:</td>
                    <td>
                        <asp:TextBox ID="tbIsim" runat="server" CssClass="bg-danger"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Soyadın:</td>
                    <td>
                        <asp:TextBox ID="tbSoyadin" runat="server" CssClass="bg-danger"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Yaş:</td>
                    <td>
                        <asp:TextBox ID="tbYas" runat="server" CssClass="bg-danger" /></td>
                </tr>
                <tr>
                    <td>Boy:</td>
                    <td>
                        <asp:TextBox ID="tbBoy" runat="server" CssClass="bg-danger"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Cinsiyetin:</td>
                    <td>
                        <asp:RadioButton ID="rdErkek" runat="server" Text="Erkek" GroupName="cinsiyet" />
                        <asp:RadioButton
                            ID="rdBayan" runat="server" Text="Bayan" GroupName="cinsiyet" /></td>
                </tr>

                <tr>
                    <td>Sınıf</td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlSinif">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Eposta</td>
                    <td>
                        <asp:TextBox ID="tbEposta" runat="server" CssClass="bg-danger" /></td>
                </tr>
                <tr>
                    <td>Şifre</td>
                    <td>
                        <asp:TextBox ID="tbSifre" runat="server" CssClass="bg-danger" TextMode="Password" />
                    </td>
                </tr>

                <tr>
                    <td>Telefon</td>
                    <td>
                        <asp:TextBox ID="tbTelefon" runat="server" CssClass="bg-danger" /></td>
                </tr>
                <tr>
                    <td>Doğum Tarihi</td>
                    <td>
                        <asp:TextBox ID="tbDogum" runat="server" CssClass="bg-danger" /></td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: right;">
                        <asp:Button Text="Kaydet" runat="server" ID="btKaydet" OnClick="btKaydet_Click" />
                    </td>

                </tr>
            </table>
            <p />


            <table border="1">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                            AllowSorting="True" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                            DataKeyNames="id" DataSourceID="accessDB" GridLines="Horizontal" PageSize="20">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False"
                                    ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                                <asp:BoundField DataField="soyadi" HeaderText="soyadi"
                                    SortExpression="soyadi" />
                                <asp:BoundField DataField="yas" HeaderText="yas" SortExpression="yas" />
                                <asp:BoundField DataField="boy" HeaderText="boy" SortExpression="boy" />
                                <asp:BoundField DataField="cinsiyet" HeaderText="cinsiyet"
                                    SortExpression="cinsiyet" />
                                <asp:BoundField DataField="sinif" HeaderText="sinif" SortExpression="sinif" />
                                <asp:BoundField DataField="eposta" HeaderText="eposta"
                                    SortExpression="eposta" />
                                <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                                <asp:BoundField DataField="telefon" HeaderText="telefon"
                                    SortExpression="telefon" />



                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="accessDB" runat="server"
                            ConnectionString="<%$ ConnectionStrings:webConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:webConnectionString.ProviderName %>"
                            SelectCommand="SELECT * FROM [kisiler]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
