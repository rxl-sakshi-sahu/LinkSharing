package linksharing

import enums.VisibilityEnum
import grails.gorm.transactions.Transactional

@Transactional
class TopicService {

    int getTopicCount() {
        def user = User.get(1)
        def topicCount = Topic.countByCreatedBy(user)
        return topicCount
    }
    def serviceMethod() {
            Topic topic = new Topic(topicName:params.get("topicName"), createdBy: user)
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
