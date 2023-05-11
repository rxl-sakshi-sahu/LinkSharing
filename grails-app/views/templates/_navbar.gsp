<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="TopicShow.html">LinkSharing</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">

                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li><a class="dropdown-item" href="#">User</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Topic</a></li>
                        <li><a class="dropdown-item" href="#">Posts</a></li>
                    </ul>
                </li>
            </ul>
            <g:form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            </g:form>
            <!-- <i style='font-size:24px' class='fas'>&#xf075;</i> -->
%{--            <i style="font-size:24px" class="fa">&#xf0e0;</i>--}%

            <button type="button" class="btn btn-link" style="color: black">
               <a data-bs-toggle="modal" data-bs-target="#createTopic" data-bs-whatever="createTopic">
                   <i style="font-size:24px; " class="bi bi-chat-fill"></i> <!--&#xF24B;-->
               </a>
            </button>
            <button type="button" class="btn btn-link" style="color: black">
                <a data-bs-toggle="modal" data-bs-target="#createTopic" data-bs-whatever="createTopic">
                    <i style="font-size:24px" class="fa">&#xf0e0;</i>
                </a>
            </button>
            <button type="button" class="btn btn-link" style="color: black">
                <a data-bs-toggle="modal" data-bs-target="#createTopic" data-bs-whatever="createTopic">
                    <i style="font-size:24px" class="bi bi-link-45deg"></i><!--&#xF470; -->
                </a>
            </button>
            <button type="button" class="btn btn-link" style="color: black">
                <a data-bs-toggle="modal" data-bs-target="#shareDoc" data-bs-whatever="shareDoc">
                    <i style='font-size:24px' class='fas'>&#xf044;</i>
                </a>
            </button>
%{--            *********************************   shareDoc     **************--}%
            <div class="modal fade" id="shareDoc" tabindex="-1" aria-labelledby="shareDoc" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel1">Share Document</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <g:form action="index" controller="documentResource">
                                <div class="mb-3 d-flex ">
                                    <label for="recipient-name" class="col-form-label me-5">Document </label>
                                    <input type="text" class="form-control" name="topicName" id="doc">
                                </div>
                                <div class="mb-3 d-flex">
                                    <label for="recipient-name" class="col-form-label me-5">Description </label>
                                    <textarea id="description" name="description" rows="3" cols="30"></textarea>
                                </div>
                            %{-- <g:hiddenField name="createdBy" value="${session.currentUser}" />--}%
                                <div class="mb-3 d-flex justify-content-between">
                                    <label for="message-text" class="col-form-label me-5">Topic:</label>
                                    <select class="form-select rounded" name="visibilityEnum" aria-label="Default select example">
                                        <option selected value="PUBLIC">Topic</option>
                                        <option value="PRIVATE">Topic1</option>
                                        <option value="PRIVATE">Topic2</option>
                                    </select>
                                </div>
                                <div class="modal-footer">

                                    <button type="submit" class="btn btn-primary">Save </button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>

%{--            *************************************************--}%
            <div class="modal fade" id="createTopic" tabindex="-1" aria-labelledby="createTopic" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Create Topic</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <g:form action="index" controller="topic">
                                <div class="mb-3 d-flex ">
                                    <label for="recipient-name" class="col-form-label me-5">Topic: </label>
                                    <input type="text" class="form-control" name="topicName" id="topic">
                                </div>
                            %{-- <g:hiddenField name="createdBy" value="${session.currentUser}" />--}%
                                <div class="mb-3 d-flex justify-content-between">
                                    <label for="message-text" class="col-form-label me-5">Visibility:</label>
                                    <select class="form-select rounded" name="visibilityEnum" aria-label="Default select example">
                                        <option selected value="PUBLIC">Public</option>
                                        <option value="PRIVATE">Private</option>
                                    </select>
                                </div>
                                <div class="modal-footer">

                                    <button type="submit" class="btn btn-primary">Save </button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${session.user}
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <g:link controller="editProfile" action="index" class="dropdown-item">Profile</g:link>
                    <g:if test="${session.isAdmin == true}">
                    <g:link controller="adminUsers" action="index" class="dropdown-item">Users</g:link>
                    </g:if>
                    <a class="dropdown-item" href="#">Topics</a>
                    <a class="dropdown-item" href="#">Posts</a>
                    <g:link controller="User" action="logout" class="dropdown-item">Logout</g:link>
                </div>
            </div>
        </div>
    </div>
</nav>