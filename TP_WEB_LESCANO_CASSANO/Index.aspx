<%@ Page Title="Promo ganá!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.Index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function getCodigo() {
            var Codigo = $("#MainContent_txtCodigo").val();

            $.ajax({
                type: "POST",
                url: "Index.aspx/verVoucher",
                data: JSON.stringify({ Codigo: Codigo }),
                async: false,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (salida) {
                    if (salida.d == "No existe") {
                        $('#<%=lblError.ClientID%>').html("Este codigo no existe o ya se encuentra en uso!"); 
                    }
                    else {
                        location.href = "/Premios.aspx";
                    }
                }
            });
        };

    </script>
    <h2 class="text-center" style="margin: 30px">Ingresá el código de tu voucher!</h2>

    <div class="input-group mb-3">
        <asp:TextBox ID="txtCodigo" runat="server" class="form-control" placeholder="A1B2C3D4E5F6G7H8I9J0K1L2M3N4Ñ5O"></asp:TextBox>
        <div class="input-group-append">
            <button class="btn btn-info" onclick="getCodigo(); return false;">Siguiente</button>
        </div>
    </div>

    <asp:Label ID="lblError" runat="server" Style="font-size: 15px;" Text=""></asp:Label>
</asp:Content>

