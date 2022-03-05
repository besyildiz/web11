<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bootstrapAraclar.aspx.cs"
    Inherits="bootstrapAraclar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container mt-3">
       
            <br />

            <a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Açıklama burada">
                Burada bağlantım var</a>
            <br />
            <br />

            <a href="#" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Açıklama burada">
                Burada bağlantım var</a><br />
            <br />

            <a href="#" data-bs-toggle="tooltip" data-bs-placement="right" title="Açıklama burada">
                Burada bağlantım var</a><br />
            <br />

            <a href="#" data-bs-toggle="tooltip" data-bs-placement="left" title="Açıklama burada">
                Burada bağlantım var</a>
        </div>

        <script>
            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
            var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl)
            })
        </script>


    </form>
</body>
</html>
