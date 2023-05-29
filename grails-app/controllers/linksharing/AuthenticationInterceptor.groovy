package linksharing


class AuthenticationInterceptor {
    AuthenticationInterceptor() {
//        match(controller: "user", action: "show")
        matchAll().excludes(controller: 'dashboard', action: 'index')
        .excludes(controller: 'user', action: 'index')
                .excludes(controller: 'user', action: 'RegisterUser')
        .excludes(controller: 'login', action: 'auth')
                .excludes(controller: 'login', action: 'logout')

    }
    boolean before(){
        if(!session.user)
        {
            redirect(controller: 'user', action:'index')
            return false
        }
        else{
            return true
        }
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
