<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalConvenio.aspx.cs" Inherits="ComPages.Programa.ModalConvenio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="formConvenio" runat="server">
    <div>
        <asp:DropDownList ID="ddlPais" runat="server"></asp:DropDownList>
    
    </div>
    <div >
        <asp:Button ID="btnGuardar" Enabled="false" runat="server" Text="Guardar" />
    </div>
    <div id="conven">

    </div>
    </form>
</body>
</html>
