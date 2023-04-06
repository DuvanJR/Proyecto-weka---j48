<%-- 
    Document   : output
    Created on : 5/04/2023, 8:07:01 p. m.
    Author     : DUVAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="index.jsp">
                <img src="resources/icons/dia-nublado.png" height="30" width="" alt="">
                <span id="brandOne">Weather</span><span id="brandTwo">Predition</span>
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
        
        <!-- Output Predition -->
        <div class="container" id="output">
            <div class="row justify-content-center">
                <div class="col-sm-8">
                    <div id="contentOutput">${msj}</div>
                    <a href="index.jsp" class="btn btn-info mx-auto btn-block">Back to Home</a>
                </div>
            </div>
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
                            and the data set <i>weather.nominal.arff</i> to predict if there will be good 
                            weather to go out and play.
                        </div>
                        <br>
                        <div>
                            <h6><b>Developed by</b></h6>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Emily Vanegas <br> 
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="resources/js/script.js"></script>      
    </body>
</html>
