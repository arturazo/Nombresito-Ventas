<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregaProducto.aspx.cs" Inherits="Nombresito.AgregaProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3>Agregar Producto</h3>
    <div class="row">
            <div class="col-md-1">
                Nombre:
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" id="txtNombre" class="col-m4 control-label" />
            </div>
    </div>
     <br />
    <div class="row">
            <div class="col-md-1">
                Precio Compra:
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server"  id="txtPCompra" class="col-m4 control-label" />
            </div>
    </div>
     <br />
    <div class="row">
            <div class="col-md-1">
                Precio Venta:
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" id="txtPVenta" class="col-m4 control-label" />
            </div>
    </div>
     <br />
    <div class="row">
            <div class="col-md-1">
                Cantidad:
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" id="txtCantidad" class="col-m4 control-label" />
            </div>
   </div>
    <br />
    <div class="row">
        <div class="col-md-12">
            <asp:Button CssClass="btn btn-info" runat="server" text="Guardar" id="btnIngresar" OnClick="btningresar_Click" />
            <asp:Button CssClass="btn btn-info" runat="server" text="Listado" id="btnListado" OnClick="btnlistar_Click" />
        </div>
    </div>

    <div class ="row">
        <div class="col-md-4">
            <h4><asp:Label runat="server" id="lblMessage"></asp:Label></h4>
        </div>
    </div>




</asp:Content>
