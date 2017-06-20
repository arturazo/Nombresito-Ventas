using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nombresito
{
    public partial class AgregaProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var uConectado = (usuario)Session["usuarioConectado"];
            if (Session["usuarioConectado"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (uConectado.tipousuario != "administrador")
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            var bd = new BD();
            var productito = new producto();
            productito.nombre = txtNombre.Text;
            productito.precioventa = Convert.ToInt32(txtPVenta.Text);
            productito.preciocompra = Convert.ToInt32(txtPCompra.Text);
            productito.cantidad = Convert.ToInt32(txtCantidad.Text);
            bd.producto.Add(productito);
            lblMessage.Text = "Producto Agregado";
            lblMessage.CssClass = "alert-success";
            
            bd.SaveChanges();
            limpiar();
        }
        private void limpiar()
        {
            txtNombre.Text = "";
            txtPCompra.Text = "";
            txtPVenta.Text = "";
            txtCantidad.Text = "";
        }

        protected void btnlistar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListadoProductos.aspx");
        }
    }
}