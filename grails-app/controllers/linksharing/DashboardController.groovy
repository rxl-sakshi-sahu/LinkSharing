package linksharing

import enums.SeriousnessEnum
import enums.VisibilityEnum
import org.springframework.mail.SimpleMailMessage
import org.springframework.mail.MailSender


class DashboardController
{
    MailSender mailSender
    def subscriptionService
    def topicService
    def dashboardService
    def readingItemService
    //def mailService

    def sendEmail(){

        def receiverEmail = params.inviteEmail
        def inviteToTopic = params.inviteTopic
        print "******"
        def message = new SimpleMailMessage()

        message.setTo("${receiverEmail}")
        message.setFrom("sakshi.testing12@gmail.com")
        message.setSubject("Test invitation mail for topic + ${inviteToTopic}")
        message.setText("This is a test email.")

        mailSender.send(message)
        flash.message= "Invitation sent successfully"
        redirect(controller: "dashboard", action: "index")
    }


    def index() {
        def user= User.findByUsername(session.user)
        def topics = topicService.getTopics()
        def t= topics.findAll{ topic -> topic.createdBy==user}
        def topicCount = t.size()

        def noOfSubscriptions = subscriptionService.getSub()
        def s = noOfSubscriptions.size()
        def countSubscriptionsByUser
        def trendingTopics
        def latestSubscribedTopics

        def getDescription = readingItemService.unReadResource(session.user)
        print getDescription
        if(user) {
            countSubscriptionsByUser = user.subscription.size()

            trendingTopics = dashboardService.trendingTopics()
            latestSubscribedTopics = dashboardService.latestSubscribedTopics(session.user)
        }
        else
        {
                redirect(controller:'user', action:'index')
                return
        }
        render(view: 'index', model:[latestSubscribedTopics:latestSubscribedTopics, topicCount:topicCount,trendingTopics:trendingTopics,
                                     subCount:s, getDescription:getDescription, cnt:countSubscriptionsByUser,topics:topics, 'UserSubscribedTopics': subscriptionService.getUserSubscribedTopics(session.user)])
    }

    def userProfile(){
        def getUserSubscribedTopics = subscriptionService.getUserSubscribedTopics(session.user)
        render(view:'userProfile', model: [getUserSubscribedTopics:getUserSubscribedTopics])
    }

    def viewPost(){
        def trendingTopics = dashboardService.trendingTopics()
        render(view: 'viewPost', model: [trendingTopics:trendingTopics])
    }

}

