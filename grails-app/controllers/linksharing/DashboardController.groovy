package linksharing

class DashboardController
{
    def subscriptionService
    def topicService
    def dashboardService

    def index() {
        def user= User.findByUsername(session.user)
        def topics = topicService.getTopics()
        //print topics
        def t= topics.findAll{ topic -> topic.createdBy==user}
        def topicCount = t.size()

        def resourceList = Resource.list()
        def descriptionList = resourceList.collect { it.description }

        def noOfSubscriptions = subscriptionService.getSub()
        def s = noOfSubscriptions.size()

        def trendingTopics = dashboardService.trendingTopics()
        def latestSubscribedTopics = dashboardService.latestSubscribedTopics(session.user)
        render(view: 'index', model:[latestSubscribedTopics:latestSubscribedTopics, topicCount:topicCount,trendingTopics:trendingTopics,
                                     subCount:s, topics:topics, 'descriptionList':descriptionList])
    }
    def viewPost()
    {
        def trendingTopics = dashboardService.trendingTopics()
        render(view: 'viewPost', model: [trendingTopics:trendingTopics])
    }

}

