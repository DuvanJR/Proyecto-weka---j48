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
        <title>JSP Page</title>
    </head>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="index.jsp">
                <img src="resources/icons/dia-nublado.png" height="30" width="" alt="">
                <span id="brandOne">Weather</span><span id="brandTwo">Predition</span>
            </a>

            
        
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
                                <label for="glucose">Glucose&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Glucosa?"></i></label>
                                
                                <input type="type" name="bloodPressure" value="escribe" id="148" class="form-control" required>
                                
                                
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
                        
                       
                        <button type="submit" name="btnVerify" class="btn btn-info btn-block">Submit</button>
                    </div>
                </div>
            </form>
        </div>
        
       
        <script src="resources/js/script.js"></script>
    </body>
</html>
