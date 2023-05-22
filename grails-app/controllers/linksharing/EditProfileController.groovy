package linksharing

class EditProfileController {
    def topicService
    def index() {
        def user= User.findByUsername(session.user)
        def topics = topicService.getTopics()
        //print topics
        def t= topics.findAll{ topic -> topic.createdBy==user}
        def topicCount = t.size()

        def topicList = topicService.getUserTopics(session.user)
        render (view: 'index', model: ['topicList':topicList, 'topicCount':topicCount])
    }

    def saveProfile() {
        def user = User.findByUsername(session.user)

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
            flash.error = "Please try again"
            redirect(action: 'index')
        }
        render("updated")
    }

    def changePassword() {
        def user = User.findByUsername(session.user)
        def newPassword = params.password
        def confirmPassword = params.confirmPassword
        if(newPassword != confirmPassword){
            flash.error= "Password do not match"
            redirect(controller: 'editProfile' ,action: 'index')
        }
        else {
            user.password = newPassword
            user.save(flush: true, flashOnError: true)
            flash.message = "Password updated successfully"
            redirect(controller: 'editProfile', action: 'index')
        }
    }
}
