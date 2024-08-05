<%-- 
    Document   : Mascotas
    Created on : 10 jul. 2024, 01:58:54
    Author     : JOSUEDAVID
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Mascotas"%>
<%@page import="Dao.MascotasDao"%>
<%@page import="Model.Raza"%>
<%@page import="Dao.RazaDao"%>
<%@page import="Model.Sexo"%>
<%@page import="Dao.SexoDao"%>
<%@page import="Model.Tipo_Animal"%>
<%@page import="Dao.Tipo_AnimalDao"%>
<%@page import="Conexion.Conexion" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sistema Veterinaria</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/stylesp.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body>
        <%!
            Conexion conexion = new Conexion();
            MascotasDao mascotasDao = new MascotasDao(conexion);
            RazaDao razaDao = new RazaDao(conexion);
            SexoDao sexoDao = new SexoDao(conexion);
            Tipo_AnimalDao tipo_animalDao = new Tipo_AnimalDao(conexion);
            
        %>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">VT Colitas Felices</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">Principal</div>
                            <a class="nav-link" href="menu.jsp">
                                <div class="sb-nav-link-icon"><i class="bi bi-menu-button"></i></div>
                                Menu Principal
                            </a>

                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="bi bi-card-checklist"></i></div>
                                Gestiones
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="Usuarios.jsp">Usuarios</a>
                                    <a class="nav-link" href="Clientes.jsp">Clientes</a>
                                    <a class="nav-link" href="Citas.jsp">Registrar Cita</a>
                                    <a class="nav-link" href="Raza.jsp">Raza</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Gestion Mascotas</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-8"><h3> Clientes</h3></div>
                                <div class="col-4 aling-self-center">
                                    <div class="d-grid gap-2">
                                        <button type="button" id="btnAdd" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar</button>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead >
                                    <th>Nombres</th>
                                    <th>Fecha Nacimiento</th>
                                    <th>Id Clientes</th>
                                    <th>Id Raza</th>
                                    <th>Id Sexo</th>
                                    <th>Id Tipo de Animal</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                    <tbody>
                                        <%
                                            List<Mascotas> lista = mascotasDao.mostrarMascotas();
                                            for (Mascotas elem : lista) {
                                        %>
                                        <tr>
                                            <td class="nombres"><%=elem.getNombre()%></td>
                                            <td class="f_nacimiento"><%=elem.getF_Nacimiento()%></td>
                                            <td class="idclientes"><%=elem.getIdClientes()%></td>
                                            <td class="idraza"><%=elem.getIdRaza()%></td>
                                            <td class="idsexo"><%=elem.getIdSexo()%></td>
                                            <td class="idtipo_de_animal"><%=elem.getIdTipo_De_Animal()%></td>
                                            <td>
                                                <button type="button" class="btn btn-outline-warning">Editar</button>
                                                <button type="button" class="btn btn-outline-danger">Eliminar</button>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                    </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog  modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Nuevo Cliente</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form action="${pageContext.servletContext.contextPath}/MascotasController" method="POST"  id="SendData">
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <label>Nombres</label>
                                                            <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                                                        </div>
                                                        <div class="col-6">
                                                            <label>Fecha de Nacimiento</label>
                                                            <input type="text" name="txtFecha" class="form-control" id="txtFecha">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <label>ID Clientes</label>
                                                            <input type="text" name="txtCorreo" class="form-control" id="txtCorreo">
                                                        </div>
                                                        <div class="col-6">
                                                            <label>ID Raza</label>                             
                                                            <input type="text" name="txtRaza" class="form-control" id="txtRaza">                                             
                                                        </div>
                                                        <div class="col-6">
                                                            <label>ID Sexo</label>                             
                                                            <input type="number" name="txtSexo" class="form-control" id="txtSexo">                                             
                                                        </div>
                                                        <div class="col-6">
                                                            <label>ID Tipo de Animal</label>                             
                                                            <input type="number" name="txtTipo de animal" class="form-control" id="txtTipo de animal">                                             
                                                        </div>
                                                        <input type="hidden" name="accion" value="" id="accion">
                                                    </div>
                                                </div>
                                                <div class="modal-footer">                                                    
                                                    <div class="col-12">
                                                        <button type="submit" class="btn btn-success">Guardar</button>
                                                        <button type="button" class="btn btn-info" data-bs-dismiss="modal">Cancelar</button>
                                                    </div>
                                                </div> 
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>  
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"> &copy;Colitas Felices 2024</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>