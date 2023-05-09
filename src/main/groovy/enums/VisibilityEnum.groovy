package enums

enum VisibilityEnum {
    PUBLIC("Public"),
    PRIVATE("Private")
    private String value
    VisibilityEnum(String value){
        this.value=value
    }
}
