package linksharing
class UserController {

    def index()
    {
        render(view:'index')
    }

    def logout() {
        session.invalidate()
        redirect(action: 'index')
    }

    def RegisterUser()
    {
        //println params
        def user = new User(params)
        println user
        user.save(flush:true, failOnError:true)
        flash.message="You are registered successfully!"
        redirect(action: 'index')
    }

    def auth() {
        User user = User.findByEmail(params.email)
        print params
        if(params.email == null)
        {
            flash.message= "user is null"
            redirect(controller:"User", action:'index')
        }
        def email = params.email
        def password = params.password
        def isAdmin = params.admin
        if(user.email==email || user.username== email) {
            if (user.password == password && user.active== true) {
                session.user = user.username
                session.isAdmin = user.admin
                redirect(controller: "Dashboard", action: "index")
            } else {
                flash.message = "Incorrect details, Please try again!"
                render(view: "index")
            }
        }
    }
}
