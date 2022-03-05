<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bootstrapNav.aspx.cs" Inherits="bootstrapNav" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container mt-3">
  <h2>Bağlantılar</h2>
   <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#">Aktif</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Bağlantı</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Bağlantı</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">Geçersiz</a>
    </li>
  </ul>
</div>
    </div>
    </form>
</body>
</html>
