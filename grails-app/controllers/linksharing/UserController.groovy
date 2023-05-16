package linksharing

class UserController {

    def index() {
        render(view: 'index')
    }

    def RegisterUser() {
        //println params
        def user = new User()
        println user
        bindData(user, params, [exclude: 'photo'])

        user.save(flush: true, failOnError: true)
        flash.message = "You are registered successfully!"
        redirect(action: 'index')
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
