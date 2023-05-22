package linksharing

import enums.SeriousnessEnum
import enums.VisibilityEnum

class SubscriptionController {

    def index() { }

    def subscribe()
    {
        User u = session.getAttribute("username") as User
        Topic t = Topic.findOrCreateById(u.id)
        Subscription sub = new Subscription()

        SeriousnessEnum x = SeriousnessEnum."${params.seriousnessEnum}"
        sub.SeriousnessEnum = x
        Subscription s =new Subscription(user:user, topic:t, seriousness: SeriousnessEnum.VERY_SERIOUS)
        s.save(flush:true, failOnError:true)
        redirect(controller: "dashboard", action:"index")
    }
}
