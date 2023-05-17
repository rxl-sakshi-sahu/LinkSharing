package linksharing

class DocumentResourceController {
    def resourceService
    def index(){
//        def file = ResourceService.getfilePath()
//        render(view:'index' , model: [users:users])
    }


//        def upload() {
//            def myFile = DocumentResource.get(id)
//            def filePath = myFile.filePath
//            def d = new DocumentResource(params)
//            if (d.save()) {
//                d.filePath = "/path/to/uploaded/file"
//                d.save(flush: true)
//                render "File uploaded successfully."
//            }
//            else {
//                render view: "", model: [myFile: d]
//            }
//            def file = request.getFile("file")
//            if (!file.empty) {
//               // def filePath = "/path/to/uploaded/files/" + file.getOriginalFilename()
//                file.transferTo(new File(filePath))
//            }
//        }

    def save()
    {
        DocumentResource d = new DocumentResource()
        User u=User.findByUsername(session.username)
        d.createdBy= u
        d.description = params.description
        d.topic = Topic.findByTopicNameAndCreatedBy(params.topic, u)
        d.validate()
        //println params.topic1
        d.save(flush:true)
        redirect(controller: "dashboard", action: 'index')
    }

}

