package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class SubscriptionService {

    List<Subscription>getSub(){
        return Subscription.list()
    }

    def serviceMethod() {

    }
}
