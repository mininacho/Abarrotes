<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CfgProductos.aspx.cs" Inherits="Abarrotes.CfgProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Abarrotes Nacho</title>

    <link href="Styles/WebDesk.css" rel="stylesheet" />
    <link href="Styles/WebDeskAux.css" rel="stylesheet" />

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <link href="Content/font-awesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">

        <div>

            <div class="container-fluid">

                <div class="row">

                    <div class="col-xs-12 col-sm-1 col-md-1 col-lg-1 text-center">

                        <asp:Image ID="img_Titulo"
                            runat="server"
                            ImageUrl="~/Imagenes/admservicios.png"
                            Width="50px" />

                    </div>

                    <div class="col-xs-12 col-sm-11 col-md-11 col-lg-11">

                        <div class="text-center">

                            <h3>

                                <asp:Label ID="lbl_InfoTitulo"
                                    runat="server"
                                    Text="Catálogo de Productos">
                                </asp:Label>

                            </h3>

                        </div>

                    </div>

                </div>

                <br />

                <asp:ScriptManager ID="sm_NoRefresh" runat="server"></asp:ScriptManager>

                <asp:UpdatePanel ID="udp_SeccCat" runat="server">

                    <ContentTemplate>

                        <div id="alert_container">
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 text-left">

                            <asp:Button ID="btn_CatProducto"
                                runat="server"
                                Text="Regresar "
                                OnClick="btn_CatProducto_Click"
                                CssClass="wd_boton" />

                        </div>

                        <br />

                        <div class="row">

                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-8 col-xl-8">

                                <div class="alert alert-success" role="alert">
                                    <asp:ImageButton ID="imb_AyudaGrid"
                                        runat="server"
                                        ImageUrl="~/Iconos/info.png"
                                        OnClick="imb_AyudaGrid_Click" />
                                    <asp:Label ID="lbl_AyudaGridTitulo" runat="server" Text="Función Tabla:" Font-Bold="True"></asp:Label>
                                    <asp:Label ID="lbl_AyudaGridOp1" runat="server" Text="Haga clic con el ratón sobre el Icono para:"></asp:Label>
                                    <asp:Image ID="img_AyudaGridBaja" runat="server" ImageUrl="~/Iconos/baja.png" />
                                    <asp:Label ID="lbl_AyudaGridOp2" runat="server" Text="Dar de baja información,"></asp:Label>
                                    <asp:Image ID="img_AyudaGridCambio" runat="server" ImageUrl="~/Iconos/cambio.png" />
                                    <asp:Label ID="lbl_AyudaGridOp3" runat="server" Text="modificar información. Presione sobre los botónes de Activa/Desactiva según sea su requerimiento. Presione el botón de SubEstatus para ingresar al catálogo."></asp:Label>
                                </div>

                            </div>

                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 text-right">

                                <asp:Button ID="btn_Alta"
                                    runat="server"
                                    Text="Alta de Producto"
                                    OnClick="btn_Alta_Click"
                                    CssClass="wd_boton" />

                                <br />

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-12">

                                <div class="card border-dark mb-4">

                                    <div class="card-body">

                                        <div class="row text-center">

                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">

                                                <asp:Image ID="img_Activo"
                                                    runat="server"
                                                    ImageUrl="~/Iconos/bolitaverde.png" />

                                                <asp:Label ID="lbl_InfoActivo"
                                                    runat="server"
                                                    Text="Producto Activo">
                                                </asp:Label>

                                            </div>

                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">

                                                <asp:Image ID="img_Inactivo"
                                                    runat="server"
                                                    ImageUrl="~/Iconos/bolitarojo.png" />

                                                <asp:Label ID="lbl_InfoInactivo"
                                                    runat="server"
                                                    Text="Producto Inactivo">
                                                </asp:Label>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-12">

                                <asp:GridView ID="grd_Categorias"
                                    runat="server"
                                    CellPadding="4"
                                    ForeColor="#333333"
                                    GridLines="None"
                                    CssClass="table table-responsive-lg table-responsive-md table-responsive-sm table-responsive-xl table-bordered bs-table"
                                    AutoGenerateColumns="False"
                                    Font-Size="8pt">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:TemplateField SortExpression="seleccion">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnk_Baja" runat="server" ImageUrl="~/Iconos/baja.png" NavigateUrl='<%# "CatProductos.aspx?tp=B&pr=" + DataBinder.Eval(Container.DataItem,"producto") %>'>HyperLink</asp:HyperLink>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField SortExpression="seleccion">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnk_Cambio" runat="server" ImageUrl="~/Iconos/cambio.png" NavigateUrl='<%# "CatProductos.aspx?tp=C&pr=" + DataBinder.Eval(Container.DataItem,"producto") %>'>HyperLink</asp:HyperLink>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="producto" HeaderText="Producto" />
                                        <asp:BoundField DataField="nombre" HeaderText="Nombre Producto"></asp:BoundField>

                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                                </asp:GridView>

                            </div>

                        </div>

                    </ContentTemplate>

                </asp:UpdatePanel>

            </div>

        </div>

    </form>

</body>
</html>
