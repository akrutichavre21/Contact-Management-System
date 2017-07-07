package contact.org.ep

class Test {

    String firstName
    String lastName
    String email
    Date dob
    Long phone
    TestGroup myGroup
    Person myUser
    Boolean favFlag


    static constraints = {
        firstName blank: false
        lastName blank: false
        email email: true, blank: false
        phone blank: false, maxSize: 10
        dob max: new Date()
        myGroup nullable: true
    }
}
