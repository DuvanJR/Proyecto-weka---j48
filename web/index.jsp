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
            <form action="MyServlet" method="POST">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-group" id="contentTitle">
                            Will the weather be nice tomorrow?
                        </div>
                        <div class="form-group" id="contentText">
                            Fill in the form to find out if tomorrow will be a good day to go out and play!
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="pregnancies">Pregnancies&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="cuantos embarazos has tenido?"></i></label>
                                <select name="pregnancies" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="1">1 embarazos</option>
                                    <option value="6">6 embarazos</option>
                                    <option value="8">8 embarazos</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="glucose">Glucose ..&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="glucose?"></i></label>
                                <input type="number" name="glucose" placeholder="Escribe algo.." id="glucose" class="form-control" required min="0" max="200">


                            </div>    
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="bloodPressure">BloodPressure&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Presión arterial?"></i></label>
                                <select name="bloodPressure" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="66">66</option>
                                    <option value="72">72</option>
                                    <option value="64">64</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="skinThickness">SkinThickness&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Grosor de la piel?"></i></label>
                                <select name="skinThickness" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="29">29</option>
                                    <option value="35">35</option>
                                    <option value="35">35</option>
                                    <option value="0">0</option>
                                    <option value="23">23</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="insulin">Insulin&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="insulina?"></i></label>
                                <select name="insulin" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="0">0</option>
                                    <option value="94">94</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="bmi">Bmi&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="bmi?"></i></label>
                                <select name="bmi" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="26.6">26.6</option>
                                    <option value="33.6">33.6</option>
                                    <option value="23.3">23.3</option>
                                    <option value="28.1">28.1</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="diabetesPedigreeFunction">DiabetesPedigreeFunction&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="antecedentes con diabetes?"></i></label>
                                <select name="diabetesPedigreeFunction" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="0.351">0.351</option>
                                    <option value="0.627">0.627</option>
                                    <option value="0.167">0.167</option>
                                    <option value="0.627">0.672</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="age">Age&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="edad?"></i></label>
                                <select name="age" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="31">31</option>
                                    <option value="50">50</option>
                                    <option value="32">32</option>
                                    <option value="21">21</option>
                                </select>
                            </div>
                        </div>
                        <button id="btn" type="submit" name="btnVerify" class="animated-button"><span>Submit</span></button>
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
                            This is a Java Web program that uses the <i>J48 classification algorithm</i> 
                            and the data set <i>diabetes.arff</i> to predict if there will be good 
                            weather to go out and play.
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
