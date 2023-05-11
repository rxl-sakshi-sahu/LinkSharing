package linksharing

import enums.VisibilityEnum

class TopicController {
    def index() {
//        def topicCount= topicService.getTopicCount()
//        [topicCount: topicCount]

      def username= session.user
        def t = new Topic(params)
        User user=User.findByUsername(username)
//      println "################################33"
//        println params
        //print user
        t.createdBy = user


        VisibilityEnum x = VisibilityEnum."${params.visibilityEnum}"
        println x.getClass()
        t.visibilityEnum = x
        t.save(flush:true,failOnError:true)

        flash.message="Topic created successfully"
        redirect(controller:"dashboard", action:"index")
    }
}
//       Topic topic = new Topic(topicName:params.get("topicName"), createdBy: user)
//        bindData(topic, params)
//        if(topic.hasErrors())
//        {
//            topic.errors.allErrors.each{
//                println it
//            }
//        }

//        if(topic.save())
//        {
//            flash.message= "topic saved"
//            render(view: "index", model: [topic: topic])
//        }
//        else {
//            flash.error="topic cannot be blank"
////        }


