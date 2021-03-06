﻿<%@ Page Title="Formulario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.Formulario" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $('form').keyup(function txtLlenos() {
            var objeto = [document.getElementById("<%=txtDNI.ClientID%>"),
                document.getElementById("<%=txtNombre.ClientID%>"),
                document.getElementById("<%=txtApellido.ClientID%>"),
                document.getElementById("<%=txtEmail.ClientID%>"),
                document.getElementById("<%=txtDireccion.ClientID%>"),
                document.getElementById("<%=txtCiudad.ClientID%>"),
                document.getElementById("<%=txtCP.ClientID%>")]
            success = true;
            for (var i = 0; i < 7; i++) {
                if (!objeto[i].classList.contains("border-success")) {
                    success = false;
                }
            }
            if (success) {
                document.getElementById("<%=btnParticipar.ClientID%>").disabled = false;
            }
            else {
                document.getElementById("<%=btnParticipar.ClientID%>").disabled = true;
            }
        });

        $(document).ready(function () {
            var objeto = [document.getElementById("<%=txtDNI.ClientID%>"),
                document.getElementById("<%=txtNombre.ClientID%>"),
                document.getElementById("<%=txtApellido.ClientID%>"),
                document.getElementById("<%=txtEmail.ClientID%>"),
                document.getElementById("<%=txtDireccion.ClientID%>"),
                document.getElementById("<%=txtCiudad.ClientID%>"),
                document.getElementById("<%=txtCP.ClientID%>")]
            for (var i = 0; i < 7; i++) {
                if (objeto[i].value != "" && objeto[i].value.length >= 3) {
                    objeto[i].className += " border border-success";
                }
            }
            if (!objeto[0].classList.contains("border-success")) {
                document.getElementById("<%=btnParticipar.ClientID%>").disabled = true;
            }
        });

        function validarEmail() {
            objeto = document.getElementById("<%=txtEmail.ClientID%>");
            valueForm = objeto.value;
            var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
            if (valueForm.search(patron) == 0) {
                objeto.className = "form-control border border-success";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
            } else {
                objeto.className = "form-control border border-danger";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
            }
        }


                    $( document ).ready(function() {
                $( ".txtOnly" ).keypress(function(e) {
                    var key = e.keyCode;
                    if (key >= 48 && key <= 57) {
                        e.preventDefault();
                    }
                });
            });

        function enFoco(text) {
            objeto = document.getElementById(text);
            if (objeto.classList.contains("border-success")) {
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
            } else {
                objeto.className = "form-control border border-danger";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
            }
        }

        function sacarFoco(text) {
            objeto = document.getElementById(text);
            objeto.style.boxShadow = "0 0 0 0.2rem rgba(0,123,255,0)";
        }

        function botonOculto() {
            if (document.getElementById("<%=txtDNI.ClientID%>").value != "") {
                document.getElementById("<%=btnValidar.ClientID%>").click();
            }
            else {
                alert("No has ingresado ningún DNI.")
            }
        }

        function validarDNI() {
            objeto = document.getElementById("<%=txtDNI.ClientID%>");
            btnValidar = document.getElementById("<%=btnValidar.ClientID%>");
            valueForm = objeto.value;
            if (valueForm.length < 7) {
                objeto.className = "form-control border border-danger";
                btnValidar.disabled = true;
            }
            else {
                objeto.className = "form-control border border-success";
                btnValidar.disabled = false;
            }
        }

        function validarVacio(text) {
            objeto = document.getElementById(text);
            valueForm = objeto.value;
            if (valueForm != "" && valueForm.length >= 3) {
                objeto.className = "form-control border border-success";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
            }
            else {
                objeto.className = "form-control border border-danger";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
            }
        }
    </script>
    <div style="font-family: 'Roboto', sans-serif;">

        <h1>Ingresá tus datos </h1>
        <div>
            <asp:Label ID="lblDNI" runat="server" Text="DNI"></asp:Label>
            <br />
            <div class="row">
                <div class="col-sm-4">
                    <asp:TextBox ID="txtDNI" runat="server" class="form-control" placeholder="XXXXXXXX" onkeyup="validarDNI()" onkeypress="return SoloNumeros(event);" MaxLength="8" onblur="javascript:sacarFoco(this.id)"></asp:TextBox>
                </div>
                <div class="col-sm-1">
                    <asp:Button ID="btnValidar" runat="server" Text="Validar" OnClick="btnHide_Click" class="btn btn-info" />
                </div>
            </div>
            <br />
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:TextBox ID="txtNombre" runat="server" class="form-control txtOnly" placeholder="José" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtApellido" runat="server" class="form-control txtOnly" placeholder="Pérez" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" onKeyUp="javascript:validarEmail()" onfocus="javascript:validarEmail()" onblur="javascript:sacarFoco(this.id)" placeholder="jperez@gmail.com"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblCP" runat="server" Text="Codigo Postal"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:TextBox ID="txtDireccion" runat="server" class="form-control" placeholder="Chacabuco 403" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtCiudad" runat="server" class="form-control txtOnly" placeholder="Colegiales" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtCP" runat="server" class="form-control" placeholder="1648" MaxLength="8" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="col align-items-center text-right" style="padding-right: 0px;">
            <asp:CheckBox ID="ckbCondiciones" runat="server" /><asp:Label ID="lblCondiciones" runat="server" Style="padding-right: 10px;" Text=" Acepto los términos y condiciones de uso.  "></asp:Label>
            <asp:Button runat="server" class="btn btn-info" ID="btnParticipar" Text="Participá!" OnClick="btnParticipar_Click" />
        </div>
    </div>
</asp:Content>
