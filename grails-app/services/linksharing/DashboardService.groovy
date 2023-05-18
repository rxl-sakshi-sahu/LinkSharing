package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class DashboardService {

    def serviceMethod() {}

    def trendingTopics() {
        def c = Resource.createCriteria().list {
            projections {
                groupProperty("topic")
                count("topic", 'mycount')
            }
            println "***sdvfs*"
            order('mycount', 'desc')
        }
        return c
    }
}
