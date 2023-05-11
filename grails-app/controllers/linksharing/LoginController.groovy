package linksharing

class LoginController {

    def index() {
        redirect(controller:'User', action:'editProfile')
    }
}
