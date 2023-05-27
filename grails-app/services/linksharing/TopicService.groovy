package linksharing

import enums.VisibilityEnum
import grails.gorm.transactions.Transactional

@Transactional
class TopicService {

    List<Topic>getTopics(){
        return Topic.list()
    }

    List<Topic>getUserTopics(String username)
    {
        def user = User.findByUsername(username)
        def userTopics = Topic.findAllByCreatedBy(user)
        return userTopics
    }

    List<Topic>topicListByRole(String username)
    {
        def user= User.findByUsername(username)
        def getListByRole
        if(user.admin == true)
        {
             getListByRole = Topic.list()
        }
        else
        {
             getListByRole = Topic.findAllByVisibilityEnum('PUBLIC' as VisibilityEnum)
        }

        return getListByRole
    }


    def serviceMethod() {

    }
}
