package linksharing

import enums.VisibilityEnum
import grails.gorm.transactions.Transactional

@Transactional
class TopicService {
   // def topicDao // inject the DAO for the Topic domain class

//    int getTopicCount() {
//        topicDao.count()
//    }
        def serviceMethod() {
        Topic topic = new Topic()
        topic.name = params.topicName
        topic.createdBy = user
        if(params.VisibilityEnum == 'Public'){
            topic.VisibilityEnum = VisibilityEnum.PUBLIC
        }
        else {
            topic.VisibilityEnum = VisibilityEnum.PRIVATE
        }
        topic.save(flush: true)
        return true
    }
}
