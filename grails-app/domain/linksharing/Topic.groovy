package linksharing

import enums.VisibilityEnum

class Topic {

    String topicName
//    User createdBy
    Date dateCreated
    Date lastUpdated

    VisibilityEnum visibilityEnum

    static hasMany = [resources: Resource, subsciptions: Subscription]
    static belongsTo= [createdBy: User]
    static constraints = {
        topicName(blank: false, unique: ['createdBy'])
//        dateCreated blank: false, date: true
//        lastUpdated blank: false, date: true
      //  visibilityEnum enumType: 'string'
    }
    static mapping = {
        autoTimestamp(true)
    }

}
