package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class MailService {

    def serviceMethod() {

    }

    def sendMail() {
        to "sakshisahu.3475@gmail.com"
        from "sakshi.sahu@rxlogix.com"
//        cc "marge@g2one.com", "ed@g2one.com"
//        bcc "joe@g2one.com"
        subject "Hello Sakshi"
        body 'this is some text'
    }
}