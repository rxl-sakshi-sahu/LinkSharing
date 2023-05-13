package linksharing

class DocumentResourceController {

    def index() {
    }

    def save()
    {
        DocumentResource d = new DocumentResource(params.filepath)
        println ("************")
        println params
        d.save(flush:true)
        redirect(controller: "dashboard", action: 'index')
    }
    def upload(){
        def username= session.user
        def doc = new DocumentResource(file)
        User user=User.findByUsername(username)

        //println params
        //print user
        //doc.createdBy = user
        doc.save(flush:true,failOnError:true)
        flash.message="Document shared successfully"
        redirect(controller:"dashboard", action:"index")
    }
}

