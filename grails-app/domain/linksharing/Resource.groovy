package linksharing

class Resource {
    String description
    User createdBy
    Topic topic
    Date dateCreated
    Date lastUpdated
    static belongsTo = [topic: Topic]
    static hasMany = [readingItem:ReadingItem ,resourceRating:ResourceRating]
    static constraints = {
       // description(blank: false)
    }
    static mapping = {
        table 'RESOURCE_TABLE'
    }
}
