package linksharing

import javax.persistence.Id

class AdminUsersController {

    def adminUsersService
    def index() {
        def users = adminUsersService.getUsers()
        render(view:'index' , model: [users:users])
    }

    def updateStatus() {
        println params
        def user = User.get(params.id)
        if (user) {
            user.active = !user.active
            println params
            user.save(flush:true)
        } else {
            flash.error = "User not found."
        }
        redirect(action: "index")
    }

}
