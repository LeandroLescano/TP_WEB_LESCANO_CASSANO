﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TP_WEB_LESCANO_CASSANO.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                <div class="card text-white bg-dark center-block" style="width: auto; cursor: pointer" onclick="">
                    <img src="https://http2.mlstatic.com/tv-led-samsung-55-smart-k5500-full-hd-quadcore-netflix-D_NQ_NP_893846-MLA26427341449_112017-F.jpg" class="card-img-top img-thumbnail" alt="Responsive image">
                    <div class="card-body">
                        <h5 class="card-title">TV 55″ Samsung</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <%--<a href="#" class="btn btn-primary">Go somewhere</a>--%>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card text-white bg-dark center-block" style="width: auto; cursor: pointer"">
                    <img src="http://www.compraderas.com.bo/wp-content/uploads/2016/11/samsung_aire_acondicionado_split_18000_btu.jpg" class="card-img-top img-thumbnail" alt="Responsive image">
                    <div class="card-body">
                        <h5 class="card-title">Aire acondicionado Samsung</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <%--<a href="#" class="btn btn-primary">Go somewhere</a>--%>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card text-white bg-dark center-block" style="width: auto; cursor: pointer"">
                    <img src="https://images-na.ssl-images-amazon.com/images/I/61LiKwLWbqL._SX466_.jpg" class="card-img-top img-thumbnail" alt="Responsive image">
                    <div class="card-body">
                        <h5 class="card-title">Xiaomi Redmi Note 7 (Blue)</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <%--<a href="#" class="btn btn-primary">Go somewhere</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
