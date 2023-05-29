package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class ReadingItemService {

    def serviceMethod() {}

//    List<ReadingItem> getDescription(String username) {
        def unReadResource(String username) {
            User user = User.findByUsername(username)
            def unReadItem = ReadingItem.createCriteria().list() {
                eq('user', user)
                eq('isRead', false)
            }*.resource
            return unReadItem
        }

    def ReadResource()
    {
        def readItem = ReadingItem.findByUserAndResource(user,resource)
        readItem.isRead = true
        if(readItem.save(flush:true, flashOnError:true)){
            return true}
        else {
            return false}
    }

}