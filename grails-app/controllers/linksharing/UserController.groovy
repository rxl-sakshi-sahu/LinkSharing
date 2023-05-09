package linksharing
class UserController {

    def index()
    {

    }

    def RegisterUser()
    {
        //println params
        def user = new User(params)
        println user
        user.save(flush:true, failOnError:true)
        render(views:'index')
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

        if(user.email==email || user.username== email) {
            if (user.password == password) {
                session.user = user.username
                redirect(controller: "Dashboard", action: "index")
            } else {
                flash.message = "Incorrect details, Please try again!"
                render(view: "index")
            }
        }
    }

//    def editProfile() {
//        def user = User.findByUsername(session.username)
//        if (!user) {
//            redirect(controller: 'User', action: 'index')
//            return
//        }
//        [user: user]
//    }
}
