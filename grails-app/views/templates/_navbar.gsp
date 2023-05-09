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

            <i style="font-size:24px; padding-left: 15px;" class="bi bi-chat-fill">   </i> <!--&#xF24B;-->
            <button type="button" class="btn btn-link" >
               <a data-bs-toggle="modal" data-bs-target="#createTopic" data-bs-whatever="createTopic">
                   <i style="font-size:24px" class="fa">&#xf0e0;</i>
               </a>

            </button>
            <a href='sharelink_modal.html'><i style="font-size:24px" class="bi bi-link-45deg"></i></a> <!--&#xF470; -->

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
                    Dropdown button
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Profile</a>
                    <a class="dropdown-item" href="#">Users</a>
                    <a class="dropdown-item" href="#">Topics</a>
                    <a class="dropdown-item" href="#">Posts</a>

                </div>
            </div>
        </div>
    </div>
</nav>