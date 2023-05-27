<!DOCTYPE html>
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

</head>
<body>
<g:render template="/templates/navbar" model="['UserSubscribedTopics':UserSubscribedTopics, 'topics':topics]"/>
<g:if test="${flash.message}">
    <div class="alert alert-success" onclick="showError()" id="error-alert">${flash.message}
        <button type="button" class="btn-close" data-dismiss='alert' aria-label="Close"
                style="display: inline-block; margin-left: 70%"></button>
    </div>
    </g:if>

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
<div style="display: flex;">

    <!-- ************* Card ******************** -->

    <div class="row">
    <div class="col-sm-5">
        <div class="card" style="width: 30rem; margin: 20px;">
            <div class="card-header">
                <p>Topics: ${params.topicName} </p>
            </div>
            <div class="card-body">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user" style="height: 65px; width: 60px">
                        </div>
                        <div class="col-8">
                            <div class="col"><a href="#" class="card-link">Grails</a></div>
                            <!-- <div style="display: flex;"> -->
                            <div class="row">
                            <div class="col">@${session.user}</div>
                            <div class="col">Subscriptions</div>
                            <div class="col">Posts</div>
                            <div class="w-100"></div>
                            <div class="col"><a href="#" class="card-link">Unsubscribe</a></div>
                            <div class="col"><a href="#" class="card-link">${subscriptions.topic.id.size()}</a></div>
                            <div class="col"><a href="#" class="card-link">${descriptionListSize}</a></div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /*******************************  Subscriptions ******************* -->
        <div class="card" style="width: 30rem;  margin: 20px;">
        <div class="card-header" style="display: flex;">
            <p>Users: ${params.topicName} </p>
            <a href="#" class="card-link" style="margin-left: auto;">View All</a>
        </div>
        <g:each  var="des" in="${subscriptions.user}">
            <div class="card-body">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user" style="height: 65px; width: 60px">
                        </div>
                        <div class="col-8">
                            <h4>${des.username}</h4>
                            <div class="row">
                                <div class="col">Subscriptions</div>
                                <div class="col" style="margin-left: 90px">Topics</div>
                                <div class="w-100"></div>
                                <div style="display: flex;">
                                    %{--                            ***************************************--}%
                                    <a href="#" class="card-link">${des.subscription.size()}</a>
                                    <a href="#" class="card-link" style="margin-left: 200px">${des.topic.size()}</a>
                                    %{--                            <p>${des.topic.size()}</p>--}%
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </g:each>
    </div>

        <!-- /*******************************  Subscriptions end ******************* -->
    </div>
    <div class="col-sm-7">
        <div class="card" style="width: 45rem; margin: 20px;">
            <div class="card-header" style="display: flex;">
                <p>Post: ${params.topicName} </p>
                <div class="dropdown" style="margin-left:auto;">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        Search
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                        <button class="dropdown-item" type="button">Action</button>
                        <button class="dropdown-item" type="button">Another action</button>
                        <button class="dropdown-item" type="button">Something else here</button>
                    </div>
                </div>
            </div>
            <g:form controller="topic" action="show">
                <div class="card-body">
                    <g:each  var="des" in="${descriptionList}">
                        <div class="container">
                            <div class="row">
                                <div class="col-4">
                                    <img src="${resource(dir: 'images', file: 'user.png')}" alt="user" style="height: 65px; width: 60px">
                                </div>
                                <div class="col-8">
                                    <p>${des}</p>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </g:each>
                </div>
            </g:form>
        </div>
    </div>
</div>
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