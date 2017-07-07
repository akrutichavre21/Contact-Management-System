package contact.org.ep

class Person {

    String firstName
    String lastName
    String username
    String password
    static constraints = {
        firstName blank: false
        lastName blank: false
        username email: true, unique: true, blank: false
        password blank: false
    }
}
