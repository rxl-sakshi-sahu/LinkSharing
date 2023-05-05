package linksharing

class UserController {

    def index() {

    }
    def loginpage(){
        render(view: 'index')
    }

    def RegisterUser()
    {
        //println params
        def user = new User(params)
        //println user.firstName
       // println params
    //   render(view: 'index')
//        if(!User.findByEmail(params.email))
//        {
//            user.save(flush:true, failOnError:true)
//            redirect(action : 'view')
//           // println "did not enter"
//        }
//        else {
//            //println params.email
//            flash.message="This email already exist"
//            render(views:'index')
//        }
    user.save(flush:true, failOnError:true)
       render(views:'index')
//        if (user.validate()) {
//            user.save(flush:true, failOnError:true)
//            session.user = user
//            redirect(controller: "Topic", action: "index")
//        } else {
//            flash.error = user.errors
//            render(view: "index")
//        }
//        def loginUser() {
//            def username = params.username
//            def password = params.password
//
//            if (username == "admin" && password == "password") {
//                // set the session
//                session.user = username
//                redirect(action: "dashboard")
//            } else {
//                // invalid credentials
//                flash.message = "Invalid username or password"
//                redirect(action: "index")
//            }
//        }
//        if(user.password != user.confirmPassword)
//        {
//            render ("Passwords do not match, Please try again!")
//        }

      // user.validate()
//        try{
//            if(user.hasErrors())
//                user.errors.allErrors{
//                    println user.errors
//                }
//        }
//        catch(Exception e){
//            println it
//            // render
//        }


//        String FirstName= params.first
//        String LastName= params.last
//        String UserName= params.user
//        String email= params.mail
//        String password=params.pswd

    }
//    def authenticate() {
//        String email
//        String username
//        String password
//        def user = User.findByUsernameAndPassword(params.username, params.password)
//        if (user) {
//            session.user = user
//            redirect(controller: "home", action: "index")
//        } else {
//            flash.error = "Invalid username or password."
//            render(view: "login")
//        }
//    }



}
