package enums
enum SeriousnessEnum
{
    SERIOUS("Serious"),
    VERY_SERIOUS("Very Serious"),
    CASUAL("Casual")
    private String value
    SeriousnessEnum(String value){
        this.value=value
    }
}
