<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css">
    <!-- Bootstrap CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>Hello</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
    <title>hello</title>
</head>

<body>
%{--style="background-color:  #ccccff"--}%
<g:render template="/templates/navbar"/>

<g:if test="${flash.message}" controller="login" action="auth">
    <div class="alert alert-success">${flash.message}
        <button type="button" class="btn-close" aria-label="Close"
                style="display: inline-block; margin-left: 70%"></button>
    </div>
</g:if>
<g:if test="${flash.error}">
    <div class="alert alert-danger">${flash.error}
        <button type="button" class="btn-close" aria-label="Close"
                style="display: inline-block; margin-left: 70%"></button>
    </div>
</g:if>
<div class="row">
    <div class="col-sm-8">

        <!-- /**************** div ************************* -->
        <div class="card" style="width: 35rem; margin: 30px; ">
            <div class="card-header">
                <p>Recent Searches</p>
            </div>

            <div class="card-body" style="padding-bottom: 0%;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user"
                                 style="height: 65px; width: 60px">
                        </div>

                        <div class="col-8">
                            <div class="col"><a href="#" class="card-link">Grails</a></div>
                            <!-- <div style="display: flex;"> -->
                            <div class="row">
                                <div class="col">@Uday</div>

                                <div class="col">Subscriptions</div>

                                <div class="col">Posts</div>

                                <div class="w-100"></div>

                                <div class="col"><a href="#" class="card-link">Unsubscribe</a></div>

                                <div class="col"><a href="#" class="card-link">50</a></div>

                                <div class="col"><a href="#" class="card-link">30</a></div>

                                <!-- </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <div class="card-body" style="padding-top: 0%;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user"
                                 style="height: 65px; width: 60px">
                        </div>

                        <div class="col-8">
                            <div class="col"><a href="#" class="card-link">Grails</a></div>
                            <!-- <div style="display: flex;"> -->
                            <div class="row">
                                <div class="col">@Uday</div>

                                <div class="col">Subscriptions</div>

                                <div class="col">Posts</div>

                                <div class="w-100"></div>

                                <div class="col"><a href="#" class="card-link">Unsubscribe</a></div>

                                <div class="col"><a href="#" class="card-link">50</a></div>

                                <div class="col"><a href="#" class="card-link">30</a></div>

                                <!-- </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card" style="width: 35rem; margin: 30px;">
            <div class="card-header">
                <p>Recent Searches</p>
            </div>

            <div class="card-body" style="padding-bottom: 0%;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user"
                                 style="height: 65px; width: 60px">
                        </div>

                        <div class="col-8">
                            <div class="col"><a href="#" class="card-link">Grails</a></div>
                            <!-- <div style="display: flex;"> -->
                            <div class="row">
                                <div class="col">@Uday</div>

                                <div class="col">Subscriptions</div>

                                <div class="col">Posts</div>

                                <div class="w-100"></div>

                                <div class="col"><a href="#" class="card-link">Unsubscribe</a></div>

                                <div class="col"><a href="#" class="card-link">50</a></div>

                                <div class="col"><a href="#" class="card-link">30</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <div class="card-body" style="padding-top: 0%;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user"
                                 style="height: 65px; width: 60px">
                        </div>

                        <div class="col-8">
                            <div class="col"><a href="#" class="card-link">Grails</a></div>
                            <!-- <div style="display: flex;"> -->
                            <div class="row">
                                <div class="col">@Uday</div>

                                <div class="col">Subscriptions</div>

                                <div class="col">Posts</div>

                                <div class="w-100"></div>

                                <div class="col"><a href="#" class="card-link">Unsubscribe</a></div>

                                <div class="col"><a href="#" class="card-link">50</a></div>

                                <div class="col"><a href="#" class="card-link">30</a></div>

                                <!-- </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /**************** div ************************* -->
    </div>

    <div class="col-sm-4">
        <!--*********************  Login ********************************-->
        <div class="card" style="width: 25rem; margin: 30px;">
            <div class="card-header">
                <h4 style="text-align: center;"><strong>LOGIN</strong></h4>
            </div>

            <div class="card-body" style="padding-bottom: 0%;">

            <!--   Login details-->
                <g:form controller='Login' action='auth'>
                    <div class="form-outline mb-sm-0">
                        <input type="email" id="mail" name="email" class="form-control" required/>
                        <label class="form-label" for="email">Username / Email address</label>
                    </div>
                    <!-- Password input -->
                %{--                <input type="text" id="username" name="username" required>--}%
                    <div class="form-outline" style="padding-bottom: 0%;">
                        <input type="password" id="passwd" name="password" class="form-control" minlength="3" required/>
                        <label class="form-label" for="password">Password</label>
                    </div>

                    <div style="display: flex; padding-top: 0%;">
                        <a href="#">Forgot Password</a>

                        <div style="padding-left: 40%; padding-top: 0%; padding-bottom: 2%;">
                            <button type="submit" class="btn btn-secondary">Login</button>
                        </div>
                    </div>
                </g:form>
            </div>
            <!-- <button type="button" class="btn btn-primary"  style="padding-left: 2.5rem; padding-right: 2.5rem;">Primary</button> -->
        </div>

        <!--*******************************Login end **********************-->
        <!--*********************  Register ********************************-->
    <div class="card" style="width: 25rem; margin: 30px;">
        <div class="card-header">
            <h4 style="text-align: center;"><strong>REGISTER</strong></h4>
        </div>
    <div class="card-body" style="padding-bottom: 0%;">
    <!-- first name -->
        <g:uploadForm controller='User' action='RegisterUser' method="POST">
            <div class="form-outline mb-sm-2">
                <input type="text" id="firstName" name="firstName" class="form-control form-control-lg" required/>
                <label class="form-label" for="firstName">First Name*</label>
            </div>

            <!-- last name -->
            <div class="form-outline mb-sm-2">
                <input type="text" id="lastName" name="lastName" class="form-control form-control-lg" required/>
                <label class="form-label" for="lastName">Last Name*</label>
            </div>
            <!--   Login details-->
            <div class="form-outline mb-sm-0">
                <input type="email" id="email" name="email" class="form-control" required/>
                <label class="form-label" for="email">Email address*</label>
            </div>

            <div class="form-outline mb-sm-2">
                <input type="text" id="username" name="username" class="form-control form-control-lg" required/>
                <label class="form-label" for="username">UserName*</label>
            </div>
            <!-- Password input -->
            <div class="form-outline mb-4">
                <input type="password" id="password" name="password" class="form-control" required/>
                <label class="form-label" for="password">Password*</label>
            </div>

            <div class="form-outline mb-4">
                <input type="password" id="conf-pass" class="form-control" required/>
                <label class="form-label" for="conf-pass">Confirm Password*</label>
            </div>

            <div class="form-outline mb-4">
                <input type="file" id="photo" name="photo" class="form-control"/>
                <label class="form-label" for="photo">Photo</label>
            </div>

            <div style="padding-left: 60%; padding-top: 0%; padding-bottom: 2%;">
                <button type="submit" class="btn btn-secondary">Register</button>
            </div>
            </div>
            </div>
        </g:uploadForm>
    <!--*******************************Register end **********************-->
    </div>
</div>

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
      -->
</body>
</html>