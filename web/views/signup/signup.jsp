<%-- 
    Document   : signup
    Created on : May 3, 2019, 10:46:03 PM
    Author     : KHANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="public/css/bootstrap.css">
        <link rel="stylesheet" href="public/css/signup.css">

    </head>
    <body>
        <div class="container">
            <div class="row">

                <div class="col-md-5 mx-auto">
                    <div class="myform">
                        <div class="logo mb-3">
                            <div class="col-md-12 text-center">
                                <h1>Sign up for Banana</h1>
                            </div>
                        </div>
                        <form>
                            <div class="form-group">
                                <lable for="username">User name:</lable>
                                <input type="username" class="form-control" id="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>

                                <input type="password" class="form-control" id="pwd">
                            </div>
                            <div class="form-group">
                                <label for="confirmpwd">Confirm password:</label>
                                <input type="password" class="form-control" id="confirmpwd">
                            </div>
                            <div class="container">
                                <p id="fail-feedback"></p>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="col-md-12 text-center ">

                                <button type="submit" class="btn btn-block btn-primary" onclick="pass(document.getElementById('pwd').value, document.getElementById('confirmpwd'))">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>

            function check(){
                if (document.getElementById('pwd').value ==
    document.getElementById('confirmpwd').value) {
    document.getElementById('fail-feedback').style.color = 'green';
    document.getElementById('fail-feedback').innerHTML = 'matching';
  } else {
    document.getElementById('fail-feedback').style.color = 'red';
    document.getElementById('fail-feedback').innerHTML = 'not matching';
  }

            }
        </script>
    </body>
</html>
