<%--
  Created by IntelliJ IDEA.
  User: lt-sakshis
  Date: 11/05/23
  Time: 12:07 pm
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table id="userTable">
    <thead>
    <tr>
        <th>Username</th>
        <th>Email</th>
        <th>firstName</th>
        <th>LastName</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${users}" var="user">
        <tr>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
        </tr>
    </g:each>
    </tbody>
</table>
<script type="text/javascript">
    $(document).ready(function() {
        $.ajax({
            url: "${createLink(action: 'getUsers')}",
            dataType: 'json',
            success: function(data) {
                $.each(data, function(index, user) {
                    var row = "<tr>";
                    row += "<td>" + user.username + "</td>";
                    row += "<td>" + user.email + "</td>";
                    row += "<td>" + user.firstName + "</td>";
                    row += "<td>" + user.lastName + "</td>";
                    row += "</tr>";
                    $("#userTable tbody").append(row);
                });
            },
            error: function() {
                alert("Error while loading data!");
            }
        });
    });
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>