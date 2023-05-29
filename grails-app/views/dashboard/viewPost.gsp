<%--
  Created by IntelliJ IDEA.
  User: lt-sakshis
  Date: 22/05/23
  Time: 9:58 am
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
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script></head>

<body>
<g:render template="/templates/navbar" />

<div style="display: flex;">
    <div class="row">
        <!-- ####################### -->
        <div class="col-sm-6">
            <div class="card" style="width: 40rem;padding: 0%; margin: 30px;">

                <div class="card-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-3">
                                <img src="${resource(dir: 'images', file: 'user.png')}" alt="user"
                                     style="height: 65px; width: 60px">
                            </div>
                            <div class="col-8">
                                <div style="display: flex;">
                                    <h4>${params.descriptn}</h4>
                                    <a href="#" style=" margin-left: 30px;">Grails</a>
                                </div>
                                <p style="margin-bottom: 0%;">@Uday</p>
                            </div>
                            <p>${params.descriptn}</p>
                            <p>
                            <div style="display: flex;">
                                <a href="#" style="margin-left: 35%;">Delete</a>
                                <a href="#" style="margin-left: 15px;">Edit</a>
                                <a href="#" style="margin-left: 15px;">Download</a>
                                <a href="#" style="margin-left: 15px;">View Full Site</a>
                            </div>
                        </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ###################333 -->
        <div class="col-sm-5">
            <div class="card" style="width: 30rem; margin: 30px; margin-left: 100px;">
                <div class="card-header" style="display: flex;">
                    <p>Trending Topics</p>
                    <a href="#" class="card-link" style="margin-left: auto;">View All</a>
                </div>
                <%def count = 5%>
                <g:each var="topics" in="${trendingTopics}" status="loopStatus">
                    <div class="card-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img src="${resource(dir: 'images', file: 'user.png')}" alt="user"
                                         style="height: 65px; width: 60px">
                                </div>

                                <div class="col-8">
                                    <g:if test="${count>0}">
                                        <%count-- %>
                                        <h4>${topics[0].topicName}</h4>
                                    </g:if>
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
                </g:each>

            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>