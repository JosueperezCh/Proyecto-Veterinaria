<%-- 
    Document   : HistorialClinico
    Created on : 3 jul. 2024, 18:06:00
    Author     : josel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    <body class="sb-nav-fixed">

        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="menu.jsp">VT Colitas Felices</a>
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
                            <a class="nav-link" href="Reportes.jsp">
                                <div class="sb-nav-link-icon"><i class="bi bi-graph-up-arrow"></i></div>
                                Reportes
                            </a>
                            <a class="nav-link" href="Registro de Atencion.jsp">
                                <div class="sb-nav-link-icon"><i class="bi bi-clipboard-data-fill"></i></div>
                                Registro De Atencion
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- Contenedor -->
            <div id="layoutSidenav_content">
                <div class="conatiner-fluid px-4">
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active"></li>
                    </ol>

                    <style>
                        .table {
                            margin-top: 20px;
                            width: 80%;
                            margin-left: auto;
                            margin-right: auto;
                            border: 1px solid #dee2e6;
                        }
                        .table th, .table td {
                            padding: 8px;
                            vertical-align: middle;
                            border-top: 1px solid #dee2e6;
                        }
                        .table th {
                            background-color: #f8f9fa;
                            width: 25%;
                        }
                        .table td {
                            width: 75%;
                        }
                        .header {
                            text-align: center;
                            margin-top: 20px;
                        }
                        .header h2 {
                            margin-bottom: 0;
                        }
                        .header p {
                            margin-top: 5px;
                        }
                    </style>

                    </head>
                    <body>

                        <div class="header">
                            <h2>Historia Clínica Veterinaria</h2>
                            <p><strong>Nombre de la Clínica:</strong> [Colitas Felices] </p>
                        </div>

                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th scope="col">Fecha</th>
                                    <td class="Fecha">24/06/2024</td>
                                    <th scope="col">Hora</th>
                                    <td class="Hora">08:16</td>
                                </tr>
                                <tr>
                                    <th scope="col">Nombre y Apellido</th>
                                    <td class="Cliente">Josue</td>
                                </tr>
                                <tr>
                                    <th scope="col">DNI</th>
                                    <td class="DNI">75839822</td>
                                </tr>
                                <tr>
                                    <th scope="col">Nombre Mascota</th>
                                    <td class="Mascota">Firulais</td>
                                    <th scope="col">Especie</th>
                                    <td class="Especie">Gata</td>
                                </tr>
                                <tr>
                                    <th scope="col">Sexo</th>
                                    <td class="Sexo">Hembra</td>
                                    <th scope="col">Raza</th>
                                    <td class="Raza">Egipcia</td>
                                </tr>
                                <tr>
                                    <th scope="col">Motivo Visita</th>
                                    <td class="Motivo" colspan="3"></td>
                                </tr>
                                <tr>
                                    <th scope="col">Estado Mascota</th>
                                    <td class="Estado" colspan="3">"Opción 1 (perro con problemas digestivos): Mi perro ha estado vomitando y tiene diarrea desde anoche, no quiere comer."</td>
                                </tr>
                                <tr>
                                    <th scope="col">Diagnóstico Generado</th>
                                    <td class="Diagnostico" colspan="3">"Después de realizar varios exámenes, el veterinario confirmó que mi perro tiene una alergia estacional. Nos ha recetado un medicamento y nos ha dado pautas para cuidar su piel y reducir la exposición a los alérgenos."</td>
                                </tr>
                                <tr>
                                    <th scope="col">Tratamiento</th>
                                    <td class="Tratamiento" colspan="3">"El veterinario me recomendó bañar a mi perro con un champú especial para aliviar la picazón causada por su alergia. Además, me indicó que le diera una pastilla antihistamínica diaria."</td>
                                </tr>
                                <tr>
                                    <th scope="col">Observaciones</th>
                                    <td class="Observaciones" colspan="3">"El paciente presenta una buena condición corporal, pero muestra signos de deshidratación leve."
                                        <br>"Se observan lesiones cutáneas compatibles con una alergia alimentaria."
                                        <br>"Los pulmones presentan sonidos crepitantes, lo que sugiere una posible infección respiratoria."
                                        <br>"El examen neurológico es normal, descartando cualquier problema en el sistema nervioso."</td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- Fin del Contenedor -->
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

