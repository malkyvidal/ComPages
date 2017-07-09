<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Programa.aspx.cs" Inherits="ComPages.Programa.Programa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
            
         <fieldset>
                <legend>Datos Programa</legend>

                <div class="form-group">
                    <label class="control-label" for="Nombre">Nombre Programa</label>
                    <asp:TextBox class="form-control" ID="Nombre" runat="server"></asp:TextBox>

                </div>
             <div class="form-group">
                 <label class="control-label" for="Descripcion">Descripcion</label>
                 <asp:TextBox class="form-control" ID="Descripcion" runat="server"></asp:TextBox>
                 
             </div>
             <div class="form-group">
                 <label class="control-label" for="Siglas">Siglas</label>
                 <asp:TextBox class="form-control" ID="Siglas" runat="server"></asp:TextBox>
                 
             </div>

             <div class="form-group">
                 <label class="control-label" for="AgregarConvenio">Agregar Convenio</label>
                 
                 <input id="AgregarConvenio" type="button" value="Agregar Convenio" />
             </div>

             <asp:Button ID="Guardar" CssClass="btn btn-default" runat="server" Text="Guardar" />

             
            </fieldset>
            <div runat="server" id="info" visible="false" class="alert alert-info">
                <asp:Label ID="lblInfo" runat="server" Text="Label"></asp:Label>
            </div>

        </div>
    


   
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="modalP">
     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal-label">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModal-label">Modal title</h4>
                </div>
                <div class="modal-body">
                    <div id="contenidoModal">

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save</button>
                </div>
            </div>
        </div>
    </div>
   

      <script>
          $(document).ready(function () {
              $("#contenidoModal").html('');
              $("#AgregarConvenio").click(function () {

                  $("#contenidoModal").load("ModalConvenio.aspx");
                  $("#myModal").modal("show");

              });




              $("body").on("change", "#ddlPais", function () {
                  var option = $(this).val();
                  console.log(option);
                  if (option != "0") {
                      var url = "ConveniosMarkUp.aspx?pais=" + option;
                      $("#conven").load(url);
                      $("#btnGuardar").attr('disabled', false);
                  }
                  else {
                      $("#conven").html('');
                      $("#btnGuardar").attr('disabled', true);
                  }

              })

              $("body").on("submit", "#formConvenio", function (event) {

                  alert("hola");
                  event.preventDefault();
              });
          })

    </script>
</asp:Content>
