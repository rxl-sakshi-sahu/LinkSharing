package linksharing
import enums.SeriousnessEnum
class Subscription {
    Topic topic
    User user
    Date dateCreated
    SeriousnessEnum seriousness
//    static belongsTo = [topic: Topic, user: User]
    static constraints = {

    }
}
