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
        def t= Topic.findByTopicName(params.topic)
        print t
        d.topic = t
        d.createdBy = User.findByUsername(session.user)
        d.validate()
        d.save(flush:true, failOnError:true)
        flash.message="Link is shared successfully"
        redirect(controller: "dashboard", action: 'index')
    }
}
