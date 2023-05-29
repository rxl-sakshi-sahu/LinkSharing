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

//        def user = username
//        def subscribedTopics = Topic.createCriteria().list {
//            subscriptions {
//                eq('user', user)
//            }
//            order('dateCreated', 'desc')
//            //maxResults(5)
//        }
//        return subscribedTopics
    }

    def serviceMethod() {

    }
}
