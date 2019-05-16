<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="public/css/bootstrap.css">
        <link rel="stylesheet" href="public/css/setup.css">
    </head>
    <body background="public/images/backg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto lform">
                        <div class="top-bar">
                            <div class="logo-pic">
                                <img src="pictures/logo.png">
                            </div>
                        </div>
                    <div class="myform">
                        <div class="logo mb-3 mt-2">
                                <div class="col md-12 text-center">
                                    <h1>Set up your account</h1>
                                </div>
                        </div>
                        <form action="user" method="post">
                            <div class = "row mx-auto">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="firstname">Your first name:</label>
                                        <input type="text" class="form-control" id="firstname">
                                    </div>
                                    <div class="form-group">
                                        <label for="lastname">Your last name:</label>
                                        <input type="text" class="form-control" id="lastname">
                                    </div>
                                    <div class="form-group">
                                        <label for="aboutyou">Somethings about you</label>
                                        <textarea class="form-control" id="aboutyou" row="7"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="favfood">Your favorite food</label>
                                        <textarea class="form-control" row="7"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="dateofbirth">Your date of birth</label>
                                        <input type="date" class="form-control" id="dateofbirth">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 text-center ">
                                <button type="submit" class="btn btn-block btn-primary">Submit</button>
                                <input name="command" value="LOGIN" type="hidden">
                            </div>
                        </form>
                    </div>    
                </div>
            </div>
        </div>
    </body>
</html>
