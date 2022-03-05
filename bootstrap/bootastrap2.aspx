<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bootastrap2.aspx.cs" Inherits="bootastrap2" %>

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
            <div class="btn btn-danger"><span class="spinner-grow spinner-grow-sm"></span>Yükleniyor
            </div>
        </div>
        <br />
        <asp:Button Text="Abi tıkla" runat="server" CssClass="  btn btn-danger" />
        <br />
        <asp:Button Text="Abi tıkla" runat="server" />

        <br /><br />

        <ol  class="list-group list-group-numbered">
            <li class="list-group-item">Kastamonu</li>
            <li class="list-group-item">Ankara</li>
            <li class="list-group-item">İstanbul</li>
        </ol>

        <ul class="list-group">
  <li class="list-group-item list-group-item-success">Success  </li>
  <li class="list-group-item list-group-item-secondary">Secondary  </li>
  <li class="list-group-item list-group-item-info">Info  </li>
  <li class="list-group-item list-group-item-warning">Warning  </li>
  <li class="list-group-item list-group-item-danger">Danger  </li>
  <li class="list-group-item list-group-item-primary">Primary  </li>
  <li class="list-group-item list-group-item-dark">Dark  </li>
  <li class="list-group-item list-group-item-light">Light  </li>
</ul>


    </form>
</body>
</html>
