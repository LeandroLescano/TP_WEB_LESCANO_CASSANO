<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.Index" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center" style="margin:30px">Ingresá el código de tu voucher!</h2>

    <div class="input-group mb-3">
        <asp:Textbox ID="txtCodigo" runat="server" class="form-control" placeholder="0000000123456789"></asp:TextBox>
        <div class="input-group-append">
            <asp:Button runat="server" class="btn btn-outline-dark" ID="btnSiguiente" Text="Siguiente" OnClick="btnSiguiente_Click" />
        </div>
            <button class="btn btn-outline-dark" onclick="comprobarVoucher()" >Siguienteee</button>
    </div>
    <%--<asp:Button  runat="server" Text="Button" />--%>
</asp:Content>

