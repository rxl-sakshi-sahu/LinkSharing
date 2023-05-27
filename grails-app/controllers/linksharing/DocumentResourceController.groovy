package linksharing

import org.springframework.web.multipart.MultipartFile

class DocumentResourceController {
    // def resourceService
    def index() {
//        def file = ResourceService.getfilePath()
//        render(view:'index' , model: [users:users])
    }


//
//    def save()
//    {
//        DocumentResource d = new DocumentResource()
//        User u=User.findByUsername(session.user)
//        d.createdBy= u
//        d.description = params.description
//        d.topic = Topic.findByTopicNameAndCreatedBy(params.topic, u)
//
//        d.validate()
//        //println params.topic1
//        d.save(flush:true)
//        redirect(controller: "dashboard", action: 'index')
//    }

    def upload() {
        println "*****"
        println params
        MultipartFile myFile = params.file
        File newFile = new File("/home/lt-sakshis/docResource/${myFile.originalFilename}");
        myFile.transferTo(newFile);
        String path = newFile.getAbsolutePath()

        Resource d = new DocumentResource()
        User u = User.findByUsername(session.user)
        d.createdBy = u
        d.filePath = path
        d.description = params.description
        Topic topic = Topic.findById(params.topic)
        print topic
        d.topic = topic
        d.validate()
        if (d.hasErrors()) {
            d.errors.allErrors.each {
                println it
            }
        } else {

            ReadingItem r = new ReadingItem()
            r.resource = d
            r.user = u
            r.isRead = false

            d.save(flush: true, failOnError: true)
            r.save(flush: true, failOnError: true)
            redirect(controller: "dashboard", action: 'index')
        }
    }

    def download() {
        String filePath = "/home/lt-sakshis/docResource/"

        File file = new File(filePath)
        if (!file.exists() || !file.isFile()) {
            flash.error= "file not found or invalid file"
        }

        response.setContentType("application/octet-stream")
        response.setHeader("Content-Disposition", "attachment; filename=${file.name}")
        response.setContentLength(file.length().toInt())

        try {
            FileUtils.copyFile(file, response.outputStream)
        } catch (IOException e) {
            flash.error="error"
        }
        response.outputStream.flush()
        response.outputStream.close()
        render(model: ['filePath':filePath])
    }

//    def download(){
//       // File  downloadFile = new File(yourFileDomain?.pathProperty)
//        DocumentResource r = Resource.findById(params.get("id") as long)
//        File file = new File("${r.filePath}")
//        Byte[]orderPDF = file.getBytes()
//        if(downloadFile){
//            response.characterEncoding = "UTF-8"
//            response.setHeader "Content-disposition", "attachment; filename=\"${yourFileDomain?.fileNameProperty}\"" //add the header with the filename you saved in your domain you could also set a default filename
//            response.outputStream << new FileInputStream(downloadFile)
//            response.outputStream.flush()
//            redirect(controller: "dashboard", action: 'index')
//        }


//        def photoFile = request.getFile("photo")
//        if (photoFile && !photoFile.isEmpty()) {
//            String filePath = "/users${user.username}"
//            new FileOutputStream("/home/lt-sakshis/linksharing/grails-app/assets/filePath" + filePath + ".png").leftShift(photoFile.getInputStream())
//            user.photo = filePath
//        } else {
//            user.photo = 'assets/images/user.png'
//        }



}