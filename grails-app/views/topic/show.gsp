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
<g:render template="/templates/navbar" model="[topics:topics]"/>
<div style="display: flex;">

    <!-- ************* Card ******************** -->

    <div class="row">
    <div class="col-sm-4">
        <div class="card" style="width: 25rem; margin: 30px;">
            <div class="card-header">
                <p>Topics: </p>
%{--                ${topics.topicName}--}%
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
        <!-- /*******************************  Subscriptions ******************* -->
        <div class="card" style="width: 25rem;  margin: 30px;">
        <div class="card-header" style="display: flex;">
            <p>Users: "Grails"</p>
            <a href="#" class="card-link" style="margin-left: auto;">View All</a>
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
                        <div class="col">Subscriptions</div>
                        <div class="col">Topics</div>
                        <div class="w-100"></div>
                        <div class="col"><a href="#" class="card-link">50</a></div>
                        <div class="col"><a href="#" class="card-link">30</a></div>

                        <!-- </div> -->
                    </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

        <!-- /*******************************  Subscriptions end ******************* -->
    </div>
    <!-- ###################333 -->
    <div class="col-sm-8">
        <div class="card" style="width: 48rem; margin: 20px;">
            <div class="card-header" style="display: flex;">
                <p>Post: "Grails"</p>
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
            <div class="card-body">
                <div class="container">
                    <div class="row">
                        <div class="col-4">
                            <img src="${resource(dir: 'images', file: 'user.png')}" alt="user" style="height: 65px; width: 60px">
                        </div>
                        <div class="col-8">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus,
                            numquam porro aliquam nulla error pariatur. Delectus, nihil corporis? Illum adipisci,
                        </div>

                    </div>
                </div>
                <hr>
                <div class="card-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-4">
                                <img src="${resource(dir: 'images', file: 'user.png')}" alt="user" style="height: 65px; width: 60px">
                            </div>
                            <div class="col-8">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus,
                                numquam porro aliquam nulla error pariatur. Delectus, nihil corporis? Illum adipisci,
                            </div>

                            <hr>
                        </div>
                    </div>
                </div>
            </div>
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