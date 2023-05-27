package linksharing

import enums.VisibilityEnum
import grails.gorm.transactions.Transactional

@Transactional
class ResourceService {

//    def recentShare(){
//        return Resource.createCriteria().list{
//            topic{
//                eq('visibility', VisibilityEnum.PUBLIC)
//            }
////            maxResults(count)
//            order('dateCreated', 'desc')
//        }
//    }
    def serviceMethod() {

    }
//
//    def create(Map params){
//        def multipartFile = params.filepath
//        def extension = multipartFile.getOriginalFilename().tokenize('.')[-1]
//        def bytes = multipartFile.getBytes()
//        def url = "grails-app/assets/filePath/${UUID.randomUUID()}.${extension}"
//        def newFile = new File("${url}")
//        newFile.createNewFile()
//        newFile.append(bytes)
//        params.filepath = url
//        return new DocumentResource(params)
//    }
}
