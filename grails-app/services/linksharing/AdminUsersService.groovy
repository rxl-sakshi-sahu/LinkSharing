package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class AdminUsersService {

    def serviceMethod() {

    }
    List<User>getUsers(){
        return User.list()
    }
}
