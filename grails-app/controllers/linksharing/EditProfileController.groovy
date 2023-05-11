package linksharing

class EditProfileController {

    def index() {
        render( view: 'index')
    }
   def editProfile() {
//        def username= session.user
//
//        //def user = User.findByUsername(session.username)
//
//        if (!username) {
//            flash.message="error occured"
//            redirect(controller: 'editProfile', action: 'index')
//            return
//        }
//        render(view: 'index', model: [username:username])
       render (view: 'index')
    }
    def saveProfile() {
        //render('hi')
        def user = User.findByUsername(session.user)
//        if (!user) {
//            flash.message="Info not updated"
//            redirect(controller: 'Dashboard', action: 'index')
//            return
//        }
        user.username = params.username
        user.firstName = params.firstName
        user.lastName = params.lastName
        print params
        if(user.save(flush: true))
        {
            flash.message = "Profile updated successfully"
            redirect(action: 'index')
        }
        else {
            flash.message = "Please try again"
            redirect(action: 'index')
        }
        render("updated")
    }
}
