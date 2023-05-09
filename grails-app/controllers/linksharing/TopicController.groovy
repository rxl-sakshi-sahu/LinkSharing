package linksharing

import enums.VisibilityEnum

class TopicController {

//    def index() {

//    }

    def index() {
//        def topicCount= topicService.getTopicCount()
//        [topicCount: topicCount]

      def username= session.user
        def t = new Topic(params)
        User user=User.findByUsername(username)
        //println params
        //print user
        t.createdBy = user
        String s ='Public'

        VisibilityEnum x = VisibilityEnum."${params.visibilityEnum}"
        println x.getClass()
        t.visibilityEnum = x
        t.save(flush:true,failOnError:true)

//       Topic topic = new Topic(topicName:params.get("topicName"), createdBy: user)
//        bindData(topic, params)
//        if(topic.hasErrors())
//        {
//            topic.errors.allErrors.each{
//                println it
//            }
//        }
//
//        if(params.VisibilityEnum == 'public'){
//            topic.VisibilityEnum = VisibilityEnum.PUBLIC
//        }
//        else {
//            topic.VisibilityEnum = VisibilityEnum.PRIVATE
//        }
//        if(topic.save())
//        {
//            flash.message= "topic saved"
//            render(view: "index", model: [topic: topic])
//        }
//        else {
//            flash.error="topic cannot be blank"
////        }
//        redirect(controller:"dashboard", action:"index")
//        topic.save(flush:true, failOnError:true)
      render(view: "index")
    }
}

