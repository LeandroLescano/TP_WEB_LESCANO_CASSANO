<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            <% var serializer = new System.Web.Script.Serialization.JavaScriptSerializer(); %>
            var listadoJs = <%= serializer.Serialize(listado) %>;
            for (var i = 0; i < listadoJs.length; i++) {
                document.getElementById("Img" + i).setAttribute('src', listadoJs[i].URLImagen);
                document.getElementById("title" + i).innerHTML = listadoJs[i].Titulo;
                document.getElementById("desc" + i).innerHTML = listadoJs[i].Descripcion;
            }
        });
    </script>
    <style>
        .card:hover {
            box-shadow: 1px 8px 20px grey;
            -webkit-transition: box-shadow .12s ease-in;
        }
    </style>
    <div class="container" style="font-family: 'Roboto', sans-serif; margin-top: 10px;">
        <h1>Elegí el premio por el cuál querés participar</h1>
        <div class="row" style="margin-top: 20px;">
            <div class="col-sm-4">
                <div class="card text-white bg-dark center-block" style="width: auto;">
                    <%--<asp:Button ID="btnDiv" runat="server" Text="" OnClick="btnDiv_Click" Style="display: none; cursor: pointer" />--%>
                    <img id="Img0" src="" class="card-img-top img-thumbnail" alt="Responsive image">
                    <div class="card-body">
                        <h5 class="card-title" id="title0"></h5>
                        <p class="card-text" id="desc0"></p>
                        <asp:Button ID="btnTV" class="btn btn-info" runat="server" Text="Elegir" OnClick="btnTV_Click" />
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card text-white bg-dark center-block" style="width: auto; cursor: pointer">
                    <img id="Img1" src="" class="card-img-top img-thumbnail" alt="Responsive image">
                    <div class="card-body">
                        <h5 class="card-title" id="title1"></h5>
                        <p class="card-text" id="desc1"></p>
                        <asp:Button ID="btnAire" class="btn btn-info" runat="server" Text="Elegir" OnClick="btnAire_Click" />
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card text-white bg-dark center-block" style="width: auto; cursor: pointer">
                    <img id="Img2" src="" class="card-img-top img-thumbnail" alt="Responsive image">
                    <div class="card-body">
                        <h5 class="card-title" id="title2"></h5>
                        <p class="card-text" id="desc2"></p>
                        <asp:Button ID="btnCel" class="btn btn-info" runat="server" Text="Elegir" OnClick="btnCel_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
