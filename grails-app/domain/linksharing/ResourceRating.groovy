package linksharing

class ResourceRating {
    Resource resource
    User user
    Integer score
    static belongsTo = [user:User, resource: Resource]
    static constraints = {
        //resource(unique: ['createdBy'], nullable: false)
        //user(nullable: false)
        //score(min: 1,max: 5,nullable: false)
    }
}
