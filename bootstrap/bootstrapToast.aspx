<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bootstrapToast.aspx.cs" Inherits="bootstrapToast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
 <div class="container mt-3">
  <h3>Toast Örneği</h3>
 
  <button type="button" class="btn btn-primary" id="toastbtn">Toast mesajını göster</button>
  
  <div class="toast">
    <div class="toast-header">
      <strong class="me-auto">Başlık</strong>
      <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
    </div>
    <div class="toast-body">
      <p>İçerik</p>
    </div>
  </div>
</div><script>
document.getElementById("toastbtn").onclick = function() {
  var toastElList = [].slice.call(document.querySelectorAll('.toast'))
  var toastList = toastElList.map(function(toastEl) {
    return new bootstrap.Toast(toastEl)
  })
  toastList.forEach(toast => toast.show()) 
}
</script>
    </form>
</body>
</html>
