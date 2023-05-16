package linksharing

class DashboardController {
    def SubscriptionService
    def TopicService
    def index() {
        def topics = TopicService.getTopics()
        def t= topics.size()

        def noOfSubscriptions = SubscriptionService.getSub()
        def s = noOfSubscriptions.size()

        render(view: 'index', model:[topicCount:t, subCount:s,topics:topics])
    }
        }

