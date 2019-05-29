<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.Index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center" style="margin: 30px">Ingresá el código de tu voucher!</h2>

    <div class="input-group mb-3">
        <asp:TextBox ID="txtCodigo" runat="server" class="form-control" placeholder="A1B2C3D4E5F6G7H8I9J0K1L2M3N4Ñ5O"></asp:TextBox>
        <div class="input-group-append">
            <asp:Button runat="server" class="btn btn-info" ID="btnSiguiente" Text="Siguiente" OnClick="btnSiguiente_Click" />
        </div>
    </div>

    <asp:Label ID="lblError" runat="server" Style="font-size: 15px;" Text=""></asp:Label>
</asp:Content>

