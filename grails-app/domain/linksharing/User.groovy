package linksharing

class User {
    String email
    String username
    String password
    String firstName
    String lastName
    String photo
    Boolean admin = false
    Boolean active = true
    Date dateCreated
    Date lastUpdated

    static hasMany = [topic: Topic, subscription: Subscription, resource: Resource, readingItem: ReadingItem]
    static constraints = {
        email email: true, blank: false, unique: true
        username blank: true, unique:true
        firstName blank: false
        lastName blank: false
        password blank: false, minSize:3
        photo nullable: true
        dateCreated blank: false, date: true
        lastUpdated blank: false, date: true
    }

    static mapping = {
        table 'USER_TABLE'
    }
}