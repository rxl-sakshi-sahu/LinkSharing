package linksharing

import enums.SeriousnessEnum
import enums.VisibilityEnum

class TopicController {
  def topicService
  def subscriptionService

//
//  def latestSubscribedTopics(String username) {
//    User user = User.findByUsername(username)
//    def subscribedTopics = user.subscription*.topic
//    subscribedTopics = subscribedTopics.sort { it.dateCreated }.reverse()
//    //println subscribedTopics
//    return subscribedTopics
//  }




  def show(String topicName) {
    def topic = Topic.findByTopicName(topicName)
    if (!topic) {
      flash.message = "Topic not found"
      redirect(controller: 'dashboard', action: 'index')
    }
    def sub = topic.subscriptions
    def descriptionList = topic.resources.description
    def descriptionListSize = descriptionList.size()
    def topics = topicService.getTopics()
    def t = topics.size()

    def noOfSubscriptions = subscriptionService.getSub()
    def s = noOfSubscriptions.size()

    def UserSubscribedTopics = subscriptionService.getUserSubscribedTopics(session.user)

    render(view: 'show', model: ['topics': topics,'subscriptions':sub,'topic': topic, 'descriptionListSize':descriptionListSize,
                                 'descriptionList': descriptionList, subCount: s, topicCount: t,
    'UserSubscribedTopics':UserSubscribedTopics])
  }

  def topicList() {
    User user = User.findByUsername(session.user)
  //  def topics = topicService.getTopics()
    def getList = topicService.topicListByRole(session.user)
    def size = getList.size()
    print getList
    render(view: 'topicList', model: [ 'getList': getList,'size':size,'user': user])
  }

  def index() {
    def username = session.user
    def t = new Topic(params)
    User user = User.findByUsername(username)
    t.createdBy = user

    VisibilityEnum x = VisibilityEnum."${params.visibilityEnum}"
    println x.getClass()
    t.visibilityEnum = x
    t.save(flush: true, failOnError: true)

    SeriousnessEnum seriousness = SeriousnessEnum.VERY_SERIOUS
    Subscription s = new Subscription(user: user, topic: t, seriousness: seriousness)
    s.save(flush: true, failOnError: true)

    flash.message = "Topic created successfully"
    redirect(controller: "dashboard", action: "index")
  }

  def subscribe() {
    def topic = Topic.get(params.topicId as Long)
    def user = User.findByUsername(session.user)
    def subscription = Subscription.findByUserAndTopic(user, topic)
    if (subscription) {
      if(subscription.user != params.user){
      subscription.delete(flush: true)
      flash.message = "You have been unsubscribed from ${topic.topicName}."}
      else {
        flash.message = "You cannot unsubscribe from your own topic"
      }
    }
    else {
      Subscription s = new Subscription(user: user, topic: topic,seriousness: SeriousnessEnum.VERY_SERIOUS)
      s.save(flush: true, failOnError: true)
      flash.message = "You have been subscribed to ${topic.topicName}."
    }
    redirect(controller: 'topic', action: 'topicList')
  }
}