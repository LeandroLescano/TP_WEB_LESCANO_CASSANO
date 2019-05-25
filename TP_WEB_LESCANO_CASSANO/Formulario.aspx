<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.Formulario" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Ingresá tus datos </h1>
    <div>
<asp:Label ID="lblDNI" runat="server" Text="DNI"></asp:Label> <br />
        <asp:Textbox ID="txtDNI" runat="server" class="form-control" placeholder="xxxxxxxx"></asp:TextBox>
        <br />
    </div>
    <div class="row">
  <div class="col-sm-4"><asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label></div>
  <div class="col-sm-4"><asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label></div>
  <div class="col-sm-4"><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></div>
</div>
    <div class="row">
  <div class="col-sm-4"><asp:Textbox ID="txtNombre" runat="server" class="form-control" placeholder="José"></asp:TextBox></div>
  <div class="col-sm-4"><asp:Textbox ID="txtApellido" runat="server" class="form-control" placeholder="Pérez"></asp:TextBox></div>
  <div class="col-sm-4"><asp:Textbox ID="txtEmail" runat="server" class="form-control" placeholder="jperez@gmail.com"></asp:TextBox></div>
</div>
    <br />
        <div class="row">
  <div class="col-sm-4"><asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label></div>
  <div class="col-sm-4"><asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label></div>
  <div class="col-sm-4"><asp:Label ID="lblCP" runat="server" Text="Codigo Postal"></asp:Label></div>
</div>
        <div class="row">
  <div class="col-sm-4"><asp:Textbox ID="txtDireccion" runat="server" class="form-control" placeholder="Chacabuco"></asp:TextBox></div>
  <div class="col-sm-4"><asp:Textbox ID="txtCiudad" runat="server" class="form-control" placeholder="403"></asp:TextBox></div>
  <div class="col-sm-4"><asp:Textbox ID="txtCP" runat="server" class="form-control" placeholder="1648"></asp:TextBox></div>
</div>
    <br />
<asp:CheckBox ID="ckbCondiciones" runat="server" /><asp:Label ID="lblCondiciones" runat="server" Text="Acepto los términos y condiciones de uso."></asp:Label>
    <br />
    <br />
    <asp:Button runat="server" class="btn btn-info" ID="btnParticipar" Text="Participá!" OnClick="btnParticipar_Click" />
</asp:Content>

