package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class ResourceService {

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
