package linksharing

class LinkResourceController {
    def topicService

    def topicsList() {
        def topics = topicService.getTopics()
        render(view: 'index', model: [topics: topics])
    }

    def index() {}

    def save() {
        print params
        def d = new LinkResource()
        d.url = params.url
        d.description = params.description
        def t = Topic.findByTopicName(params.topic)
        print t
        d.topic = t
        d.createdBy = User.findByUsername(session.user)
        d.validate()
        if (d.hasErrors()) {
            d.errors.allErrors.each {
                println it
            }
        } else {

            ReadingItem r = new ReadingItem()
            r.resource = d
            r.user = User.findByUsername(session.user)
            r.isRead = false

            d.save(flush: true, failOnError: true)
            r.save(flush: true, failOnError: true)
            redirect(controller: "dashboard", action: 'index')
        }
    }
}