package linksharing

import enums.SeriousnessEnum
import enums.VisibilityEnum

class TopicController {
  def  topicService

  def topic()
  {
   // def user= session.user
    def topicCount= topicService.getTopicCount()
    render(view:'index', model: [topicCount: topicCount])
  }

  def subscribe(){

  }
    def index() {
      def username= session.user
        def t = new Topic(params)
        User user=User.findByUsername(username)
//        println params
        //print user
        t.createdBy = user
        VisibilityEnum x = VisibilityEnum."${params.visibilityEnum}"
        println x.getClass()
        t.visibilityEnum = x
        t.save(flush:true,failOnError:true)

      SeriousnessEnum seriousness = SeriousnessEnum.VERY_SERIOUS
      Subscription s =new Subscription(user:user, topic:t, seriousness: seriousness)
      s.save(flush:true, failOnError:true)

      flash.message="Topic created successfully"
        redirect(controller:"dashboard", action:"index")
    }

//     def subscribedToTopic(Topic t , User user){
//       Subscription sub = new Subscription();
//       sub.user = user
//       sub.topic = t
//       sub.seriousness = SeriousnessEnum.VERY_SERIOUS
//       sub.validate()
//       sub.save(flush:true, failOnError:true)
//     }

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


