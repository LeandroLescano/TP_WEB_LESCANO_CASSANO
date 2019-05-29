<%@ Page Title="Felicitaciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Felicitaciones.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.Felicitaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="jumbotron">
        <h1 class="display-4">Felicitaciones!</h1>
        <asp:Label ID="lblFelicitaciones" runat="server" Text="Ya estás participando del sorteo."></asp:Label>
        <hr class="my-4">
        <p>Mucha suerte!</p>
        <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnInicio" Text="Inicio" OnClick="btnInicio_Click" />
    </div>

</asp:Content>

