package linksharing

class DashboardController
{
    def subscriptionService
    def topicService
    def dashboardService

    def index() {
        def topics = topicService.getTopics()
        def t= topics.size()

        def resourceList = Resource.list()
        def descriptionList = resourceList.collect { it.description }

        def noOfSubscriptions = subscriptionService.getSub()
        def s = noOfSubscriptions.size()

        def trendingTopics = dashboardService.trendingTopics()

        render(view: 'index', model:[topicCount:t,trendingTopics:trendingTopics, subCount:s, topics:topics, 'descriptionList':descriptionList])
    }


}

