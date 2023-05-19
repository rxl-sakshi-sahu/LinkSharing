<%--
  Created by IntelliJ IDEA.
  User: lt-sakshis
  Date: 10/05/23
  Time: 7:33 pm
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <!-- Required meta tags -->
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
<div>
    <g:if test="${flash.message}">
        <div class="alert alert-success" onclick="showError()" id="error-alert">${flash.message}
            <button type="button" class="btn-close" data-dismiss='alert' aria-label="Close"
                    style="display: inline-block; margin-left: 70%"></button>
        </div>
        [</g:if>

    <g:if test="${flash.error}">
        <div class="alert alert-danger" onclick="showError()" id="error-alert">${flash.error}
            <button type="button" class="btn-close" data-dismiss='alert' aria-label="Close"
                    style="display: inline-block; margin-left: 70%"></button>
        </div>
    </g:if>

    <script>
        function showError(){
            document.getElementById('error-alert').removeAttribute('style')
            $('#error-alert').fadeTo(2000,500).slideUp(500, function(){
                $('#error-alert').slideUp(500);
            });
        }
    </script>
</div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
                <th scope="col">Firstname</th>
                <th scope="col">Lastname</th>
                <th scope="col">Active</th>
                <th scope="col">Manage</th>
            </tr>
            </thead>
            <tbody>
                <g:each in="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.active}</td>
                        <td>
                            <g:link controller="adminUsers" action="updateStatus" id="${user.id}" params="[user:user]">
                                    <g:if test="${user.active==true}">
                                        Deactivate
                                    </g:if>
                                <g:else>
                                    Activate
                                </g:else>
                            </g:link>
                        </td>
%{--
%{--                            <g:link controller="adminUsers" action="updateStatus" params="user.id">--}%
%{--                            <a href="#" onclick="toggleText(this)">Activate</a>--}%
%{--                            <script>--}%
%{--                                function toggleText(link) {--}%
%{--                                    if (link.innerHTML === 'Activate') {--}%
%{--                                        link.innerHTML = 'Deactivate';--}%

%{--                                    } else {--}%
%{--                                        link.innerHTML = 'Activate';--}%
%{--                                    }--}%
%{--                                }--}%
%{--                            </script>--}%
%{--                            </g:link>--}%
%{--                        </td>--}%
                    </tr>
                </g:each>
            </tbody>
        </table>
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

