package linksharing

class User {
    String email
    String username
    String password
    String firstName
    String lastName
    Byte[] photo
    Boolean admin =false
    Boolean active = true
    Date dateCreated
    Date lastUpdated

    static hasMany = [topic: Topic, subscription: Subscription, resource: Resource, readingItem:ReadingItem]
    static constraints = {
        email email: true, blank: false //, unique:true
        username blank: false, nullable: false
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
        password blank: false, nullable: false
        photo nullable: true
        dateCreated blank: false, date: true
        lastUpdated blank: false, date: true
    }
    static mapping = {
        table 'USER_TABLE'
    }
}
