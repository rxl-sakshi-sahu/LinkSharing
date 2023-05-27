package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class DashboardService {

    def serviceMethod() {}

    def latestSubscribedTopics(String username){
        User user = User.findByUsername(username)
        def subscribedTopics = user.subscription*.topic
        subscribedTopics = subscribedTopics.sort { it.dateCreated }.reverse()
        //println subscribedTopics
        return subscribedTopics


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
    def trendingTopics() { // topics based on max no. of posts
        def c = Resource.createCriteria().list {
            projections {
                groupProperty("topic")
                count("topic", 'mycount')
            }
            order('mycount', 'desc')
        }
        return c
    }
}
