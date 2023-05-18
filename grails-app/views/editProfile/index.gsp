<%--
  Created by IntelliJ IDEA.
  User: lt-sakshis
  Date: 10/05/23
  Time: 9:40 am
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
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
</head>

<body>

<g:render template="/templates/navbar"/>
<g:if test="${flash.message}">
    <div class="alert alert-success">${flash.message}
    <button type="button" class="btn-close" aria-label="Close" style="display: inline-block; margin-left: 70%"></button>
</g:if>
</div>
<div class="row">
    <div class="col-sm-5">
        <div class="card" style="width: 30rem;  margin: 20px;">
            <div class="card-body">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user" style="height: 65px; width: 60px">
                        </div>
                        <div class="col-8">
                            <h4>Welcome, ${session.user}!</h4>
                            %{--                                <p>Your email address is: ${session.user.email}</p>--}%
                            <p style="margin-bottom: 0%;">@Uday</p>
                            <div style="display: flex;">
                                <p>Subscriptions</p>
                                <p style="margin-left: auto;">Topic</p>
                            </div>

                            <g:form controller="dashboard" action="index">
                                <div style="display: flex;">
                                    <a href="#" class="card-link">${subCount}</a>
                                <g:link controller="topic" action="topicList" class="card-link" style="margin-left: auto;">${topicCount}</g:link>
                            </g:form>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card" style="width: 30rem; padding: 0px; margin: 20px;">
            <div class="card-header" style="display: flex;">
                <p>Topics</p>
                <a href="#" class="card-link" style="margin-left: auto;">View All</a>
            </div>
            <g:each in="${topicList}" var="t">
            <div class="card-body">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user" style="height: 65px; width: 60px">
                            %{--                    <img src="assets/images/user.png" alt="user" class="image">--}%
                        </div>
                        <div class="col-8">

                                    <p>${t.topicName}</p>

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
            </g:each>
        </div>
    </div>

<div class="col-sm-6">

<g:form controller='editProfile' action='saveProfile'>
    <div class="card" style="width: 30rem; margin: 30px;">
        <div class="card-header">
            <h4 style="text-align: center;"><strong>Profile</strong></h4>
        </div>
        <div class="card-body" style="padding-bottom: 0%;">
            <!-- first name -->

            <div class="form-outline mb-sm-4" style="display: flex">
            <label class="form-label"  for="firstName">First Name*</label>
            <input type="text" name="firstName" id="firstName" class="form-control form-control-lg" />
            </div>
            <!-- last name -->

            <div class="form-outline mb-sm-4" style="display: flex">
            <label class="form-label"  for="lastName">Last Name*</label>
            <input type="text" name="lastName" id="lastName" class="form-control form-control-lg" />
            </div>

            <div class="form-outline mb-sm-4" style="display: flex">
                <label class="form-label" for="username">UserName*</label>
                <input type="text" name="username" id="username" class="form-control form-control-lg" />
            </div>
            <div style="padding-left: 70%; padding-top: 0%; padding-bottom: 2%;">
                <button type="submit" class="btn btn-secondary">Update</button>
            </div>
        </div>
    </div>
</g:form>
    <!--*******************************Profile end **********************-->
    <!--*********************  Change Password ********************************-->
    <g:form controller="editProfile" action="changePassword">
    <div class="card" style="width: 30rem; margin: 30px;">
        <div class="card-header">
            <h4 style="text-align: center;"><strong>Change Password</strong></h4>
        </div>
        <div class="card-body" style="padding-bottom: 0%;">
            <div class="form-group row">
                <label for="inputPassword3" class="col-sm-5 col-form-label">Password</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" id="password" placeholder="Password">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword3" class="col-sm-5 col-form-label">Confirm Password*</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                </div>
            </div>
            <div style="padding-left: 70%; padding-top: 0%; padding-bottom: 2%;">
                <button type="submit" class="btn btn-secondary">Update</button>
            </div>

        </div>
    </div>
    </g:form>
</div>

<!--*********************  Change Password end ********************************-->

    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>