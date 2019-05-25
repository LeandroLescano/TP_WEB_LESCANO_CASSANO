function consultarVoucher() {
    $.ajax({
        type: "GET",
        url: "Index.aspx/comprobar",
        data: '{Codigo: "' + $("#<%=txtCodigo.Text%>") + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: alert("OPA")
    });
}
