package linksharing

import grails.gorm.transactions.Transactional
import org.hibernate.FetchMode


@Transactional
class SubscriptionService {

    List<Subscription>getSub(){
        return Subscription.list()
    }

    List<Subscription>getUserSubscribedTopics(String username) {
        def loggedInUser = User.findByUsername(username)
        Subscription.findAllByUser(loggedInUser)
    }
// 'subscribedTopics' now contains the list of topics that the logged-in user has subscribed to

    def serviceMethod() {

    }
}
