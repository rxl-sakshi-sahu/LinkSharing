package linksharing

import enums.VisibilityEnum

class DocumentResourceController {

    def index() {
        def username= session.user
        def doc = new DocumentResource(params)
        User user=User.findByUsername(username)
        //println params
        //print user
       // doc.createdBy = user
        doc.save(flush:true,failOnError:true)
        flash.message="Document shared successfully"
        redirect(controller:"dashboard", action:"index")
    }
}
