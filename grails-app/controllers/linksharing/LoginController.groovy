package linksharing

class LoginController {

    def index() {
        redirect(controller:'user', action:'index')
    }

    def logout() {
        session.invalidate()
        redirect(controller: 'user', action: 'index')
    }

    def auth() {

        User user = User.findByEmail(params.email)
        print params
        if(!user)
        {
            flash.message = "Invalid details"
           // flash.error="noooooooo"
            redirect(controller:"user", action: "index")
        }
        if(user.password==""|| user.email=="") {
            flash.message = "Invalid details"
            redirect(controller:"user", action: "index")
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
                render(controller: 'user',view: "index")
            }
        }
        else{
            flash.message = "Incorrect details, Please try again!"
            render(controller: 'user',view: "index")
        }
    }
    //    static findByLogin(login) {
//        def user = User.findByUsername(login)
//        if (!user) {
//            user = User.findByEmail(login)
//        }
//        return user
//    }
}
