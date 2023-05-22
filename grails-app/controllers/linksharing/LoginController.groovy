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
        User user = User.findByUsernameOrEmail(params?.email, params?.email)
        print params
        if(!user)
        {
            flash.error = "Invalid details"
            redirect(controller:"user", action: "index")
            return
        }

        def isAdmin = params.admin
        if(user?.email==params?.email || user?.username== params?.email) {
            if (user?.password == params?.password && user?.active== true) {
                session.user = user.username
                session.isAdmin = user.admin
                redirect(controller: "Dashboard", action: "index")
                return
            }
            else {
                flash.error = "Incorrect details, Please try again!"
                redirect(controller: 'user',view: "index")
                return
            }
        }
        else{
            flash.error = "Incorrect details, Please try again!"
            redirect(controller: 'user',view: "index")
        }
    }
}
