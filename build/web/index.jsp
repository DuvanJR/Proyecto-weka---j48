<%-- 
    Document   : index
    Created on : 5/04/2023, 8:06:04 p. m.
    Author     : DUVAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prediccion de diabetes</title>
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/styles.css"/>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="icon" href="resources/icons/diabetes.png">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="index.jsp">
                <img src="resources/icons/diabetes.png" height="30" width="" alt="">
                <span id="brandOne"> Diabetes </span><span id="brandTwo"> Predition </span>
            </a>

            <!-- Links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" title="View Data Set" data-toggle="modal" data-target="#dataSet">
                        <i class="fa fa-file-text fa-lg" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" title="More Info" data-toggle="modal" data-target="#moreInfo">
                        <i class="fa fa-info-circle fa-lg" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </nav>



        <!-- Form Weather Predition -->
        <div class="container" id="contentBox">
            <form class="form" id="form" action="MyServlet" method="POST">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-group" id="contentTitle">
                            <h1><b>¿Tendré Diabetes?</b></h1>
                        </div>
                        <div class="form-group" id="contentText">
                            <h4>¡Rellena el formulario para saber si tienes diabetes!</h4>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Embarazos -->
                            <div class="">
                                <label for="pregnancies"><a >Pregnancies&nbsp;</a><i class="fa fa-info-circle" aria-hidden="true" title="cuantos embarazos has tenido?"></i></label>
                                <input type="text" name="pregnancies" placeholder="Embarazos.." id="pregnancies" class="form-control" required min="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Glucosa -->
                            <div class="">
                                <label for="glucose">Glucose ..&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="glucose?"></i></label>
                                <input type="text" name="glucose" placeholder="Glucosa.." id="glucose" class="form-control" required min="0">
                            </div>    
                        </div>
                        <div class="form-group">
                            <!-- Campo de Presion Arterial -->
                            <div class="">
                                <label for="bloodPressure">BloodPressure&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Presión arterial?"></i></label>
                                <input type="text" name="bloodPressure" placeholder="Presion Arterial.." id="bloodPressure" class="form-control" min="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Grosor de la Piel -->
                            <div class="">
                                <label for="skinThickness">SkinThickness&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Grosor de la piel?"></i></label>
                                <input type="text" name="skinThickness" placeholder="Grosor de la Piel.." id="skinThickness" class="form-control" min="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Insulina -->
                            <div class="">
                                <label for="insulin">Insulin&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="insulina?"></i></label>
                                <input type="text" name="insulin" placeholder="Insulina.." id="insulin" class="form-control" required min="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Indice Masa Corporal -->
                            <div class="">
                                <label for="bmi">Bmi&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="bmi?"></i></label>
                                <input type="text" name="bmi" step="any" placeholder="Indice Masa Corporal.." id="bmi" class="form-control" min="0" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Función de pedigrí de diabetes -->
                            <div class="">
                                <label for="diabetesPedigreeFunction">DiabetesPedigreeFunction&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="antecedentes con diabetes?"></i></label>
                                <input type="text" name="diabetesPedigreeFunction" step="any" placeholder="Función Pedigrí de Diabetes.." id="diabetesPedigreeFunction" class="form-control" min="0" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Edad -->
                            <div class="">
                                <label for="age">Age&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="edad?"></i></label>
                                <input type="text" name="age" placeholder="Edad.." id="age" class="form-control" required min="0">
                            </div>
                        </div>
                        <button disabled="" id="btn" type="submit" name="btnVerify" class="animated-button"><span>Enviar</span></button>
                    </div>
                </div>
            </form>
        </div>
        <!-- Data Set Modal -->
        <div class="modal fade" id="dataSet">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Data Set</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body" id="myData">

                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- More Info Modal -->
        <div class="modal fade" id="moreInfo">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">More Info</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="text-justify">
                            Este es un programa web Java que utiliza el algoritmo de clasificación J48 y el conjunto de datos 
                            <i>diabetes.arff</i> para predecir si una mujer puede tener diabetes o si está completamente sana.
                        </div>
                        <br>
                        <div>
                            <h6><b>Developed by</b></h6>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Duvan Jaimes R. <br> 
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Jose D. Cañavera S.  <br>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Karina Suarez J. <br> 
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Mauricio Guzman S.  
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>

        </div>

        <footer id="footer"><p>Trabajo Weka Prediccion</p></footer>
        <script src="resources/js/script.js"></script>
    </body>
</html>
