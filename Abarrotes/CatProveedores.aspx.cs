using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Abarrotes
{
    public partial class CatProveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bbtn_CatProveedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdmProductos.aspx");
        }

        protected void btn_Alta_Click(object sender, EventArgs e)
        {

        }

        protected void imb_AyudaGrid_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}