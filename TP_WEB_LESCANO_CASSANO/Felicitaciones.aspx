<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Felicitaciones.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.Felicitaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Felicitaciones! </h1>
    <asp:Label ID="lblFelicitaciones" runat="server" Text="Ya estás participando del sorteo."></asp:Label>
        <br />
    <br />
                <asp:Button runat="server" class="btn btn-info" ID="btnInicio" Text="Inicio" OnClick="btnInicio_Click" />

</asp:Content>

