package linksharing

class User {
    String email
    String username
    String password
    String firstName
    String lastName
    Byte[] photo
    Boolean admin
    Boolean active
    Date dateCreated
    Date lastUpdated

    //static hasMany = [topic: Topic, subscription: Subscription, resource: Resource, readingItem:ReadingItem]
    static constraints = {

    }

}
