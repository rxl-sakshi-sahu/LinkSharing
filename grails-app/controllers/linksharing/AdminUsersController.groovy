package linksharing

import javax.persistence.Id

class AdminUsersController {

    def adminUsersService
    def index() {
        def users = adminUsersService.getUsers()
        render(view:'index' , model: [users:users])
    }

//    def activateUser(Long id) {
//        def user = User.get(id)
//        user.active = true
//        user.save()
//        flash.message = "User ${user.username} has been activated."
//        redirect(action: "index")
//    }

//    def activate(){
//        User u= User.get(params.get("id"))
//        User u1= User.findById(params.get("id"))
//        u.username = u1.username
//        u.email = u1.email
//        u.firstName = u1.firstName
//        u.lastName = u1.lastName
//        u.active = true
//        u.save(flush:true)
//        render(view:'index')
//    }
//    def deactivateUser(Long id) {
//        def user = User.get(id)
//        user.active = false
//        user.save()
//        flash.message = "User ${user.username} has been deactivated."
//        redirect(action: "index")
//    }

    def updateStatus() {
        def user = User.get(params.id)
        if (user) {
            user.active = (!params.active)
            println params
            user.save(flush:true)

        } else {
            flash.error = "User not found."
        }
        redirect(action: "index")
    }

}
