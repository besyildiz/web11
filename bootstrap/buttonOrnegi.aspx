<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buttonOrnegi.aspx.cs" Inherits="buttonOrnegi" %>

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
            <asp:Button Text="Buton1" runat="server" CssClass="btn-danger" />
            <br />
            <asp:Button Text="Buton1" runat="server" CssClass="btn-info" />
            <br />
            <img src="https://tosyamithatboynermtal.meb.k12.tr/meb_iys_dosyalar/37/14/169154/resimler/2021_11/k_13001148_IMG-20211111-WA0018.jpg"
                height="200" width="300" class="rounded-circle" />
            <div class="alert alert-success">
                <strong>Bilgilendirme</strong>
                Buradan ötesinde yol çalışması var
            </div>

            <div class="alert alert-danger">
                <strong>Bilgilendirme</strong>
                Buradan ötesinde yol çalışması var
            </div>
            <div class="alert alert-info">
                <strong>Bilgilendirme</strong>
                Buradan ötesinde yol çalışması var
            </div>



            <button type="button" class="btn btn-primary">Primary</button>
            <button type="button" class="btn btn-secondary">Secondary</button>
            <button type="button" class="btn btn-success">Success</button>
            <button type="button" class="btn btn-info">Info</button>
            <button type="button" class="btn btn-warning">Warning</button>
            <button type="button" class="btn btn-danger">Danger</button>
            <button type="button" class="btn btn-dark">Dark</button>
            <button type="button" class="btn btn-light">Light</button>
            <button type="button" class="btn btn-link">Link</button><br />
            <br />

            <div class="btn-group">
                <button type="button" class="btn btn-secondary">Apple</button>
                <button type="button" class="btn btn-secondary">Samsung</button>
                <button type="button" class="btn btn-secondary">Sony</button>
            </div>
            <p />
            <br />
            <br />

            <div class="btn btn-danger">
                Mesajın var 
        <span class="badge bg-info">3 </span>
            </div>

            <br />
  <br />
            <div class="progress">
   
              <div class="progress-bar" style="width:10%">
                %10
</div>
  </div>

        </div>
    </form>
</body>
</html>
