package contact.org.ep

class TestGroup {

    String name
    Person myUser
    static constraints = {
        name blank: false
    }
}
