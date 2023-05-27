package linksharing

class UserController {
//def ResourceService

    def RecentSharesService

    def index() {
        if(session.user)
        {
            redirect(controller:'dashboard', action:'index')
            return
        }
        def latestResources = RecentSharesService.recentShares()
        render(view: 'index', model: ['latestResources':latestResources])
    }

    def RegisterUser() {
        def user = new User()
        println user
        bindData(user, params, [exclude: 'photo'])
        if(params.password == params.confPass) {
            user.save(flush: true, failOnError: true)
            flash.message = "You are registered successfully!"
            redirect(action: 'index')
        }
        else {
            flash.error="Passwords do not match"
            redirect(action: 'index')
        }
    }
}


//        def photoFile = request.getFile("photo")
//        if (photoFile && !photoFile.isEmpty()) {
//            String filePath = "/users${user.username}"
//            new FileOutputStream("/home/lt-sakshis/linksharing/grails-app/assets/filePath" + filePath + ".png").leftShift(photoFile.getInputStream())
//            user.photo = filePath
//        } else {
//            user.photo = 'assets/images/user.png'
//        }
