using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Abarrotes
{
    public partial class AdmProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imb_AyudaGrid_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btn_Alta_Click(object sender, EventArgs e)
        {

        }

        protected void btn_CatProducto_Click(object sender, EventArgs e)
        {

            Response.Redirect("CfgProductos.aspx");

        }

        protected void btn_CatUnidades_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatUnidades.aspx");
        }

        protected void btn_Proveedores_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatProveedores.aspx");
        }
    }
}