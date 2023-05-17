<%--
  Created by IntelliJ IDEA.
  User: lt-sakshis
  Date: 16/05/23
  Time: 12:00 pm
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
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
</head>

<body>
<g:render template="/templates/navbar" model="[topics:topics]"/>

<p>The list of Topics are:</p>

<table class="table">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">topicName</th>
                <th scope="col">createdBy</th>
            </tr>
            </thead>
            <tbody>
        <g:each in="${topics}" var="t">
            <tr>
                <td>${t.id}</td>
                <td><g:link controller="topic" action="show" class="card-link">${t.topicName}</g:link></td>
%{--                <td>${t.topicName}</td>--}%
                <td>${t.createdBy.username}</td>
            </tr>
        </g:each>
            </tbody>
</table>
</body>
</html>