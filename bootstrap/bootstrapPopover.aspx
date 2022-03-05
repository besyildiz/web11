<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bootstrapPopover.aspx.cs" Inherits="bootstrapPopover" %>

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
    <h3>Hoverable Popover</h3>
  
  <a href="#" title="açıklama burada" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-content="Popover text">Üzerine gel</a>
    </div>


   <script>
var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new bootstrap.Popover(popoverTriggerEl)
})
</script> 


    </form>
</body>
</html>
