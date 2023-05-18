package linksharing

class EditProfileController {
    def topicService
    def index() {
        def topicList = topicService.getUserTopics(session.user)
        println "***********"
        print topicList
        render (view: 'index', model: ['topicList':topicList])
    }

   def editProfile() {

    }

    def saveProfile() {
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

    def changePassword() {
        def user = User.findByUsername(session.user)

        def newPassword = params.password
        def confirmPassword = params.confirmPassword

        if (newPassword != confirmPassword) {
            return
        }
        user.password = newPassword
        user.save(flush: true, flashOnError: true)
        flash.message="Password changed successfully"
        redirect(controller: 'editProfile' ,action: 'index')
    }
}
