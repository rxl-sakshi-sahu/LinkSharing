package linksharing

import enums.SeriousnessEnum
import enums.VisibilityEnum

class TopicController {
  def topicService
  def subscriptionService
  def show()
  {
    def topics = topicService.getTopics()
    def t= topics.size()

    def noOfSubscriptions = subscriptionService.getSub()
    def s = noOfSubscriptions.size()

    def resourceList = Resource.list()
    def descriptionList = resourceList.collect { it.description }
    render(view:'show', model: ['topics':topics, 'descriptionList':descriptionList, subCount:s,topicCount:t])
  }

  def topicList()
  {
    def topics = topicService.getTopics()
    render(view: 'topicList', model: ['topics':topics])
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

}

