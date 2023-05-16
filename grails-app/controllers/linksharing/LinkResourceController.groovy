package linksharing

class LinkResourceController {
def TopicService
    def topicsList()
    {
        def topics = TopicService.getTopics()
        render(view: 'index', model: [topics:topics])
    }

    def index() { }
    def save()
    {
        print params
        def d = new LinkResource()
          d.url = params.url
        d.description = params.description
        def t= Topic.findByTopicName(params.topicName)
        d.topic = t
        d.createdBy = User.findByUsername(session.user)
        print d.createdBy
        d.validate()
        d.save(flush:true)
        redirect(controller: "dashboard", action: 'index')
    }
}
