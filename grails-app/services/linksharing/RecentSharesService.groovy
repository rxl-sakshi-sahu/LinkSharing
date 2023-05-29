package linksharing

import enums.VisibilityEnum
import grails.gorm.transactions.Transactional

@Transactional

class RecentSharesService {

    def serviceMethod(){}
    def recentShares() {
        def recentSharedResource = Resource.createCriteria().list {

            topic {
                eq('visibilityEnum', VisibilityEnum.PUBLIC)
            }
            order('dateCreated', 'desc')
            maxResults(5)
        }
        return recentSharedResource
    }
}
