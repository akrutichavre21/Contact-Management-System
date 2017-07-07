import contact.org.ep.Person
import contact.org.ep.TestGroup
class BootStrap {

    def init = { servletContext ->

        Person defaultUser1 = new Person([firstName: "Akruti", lastName: "Chavre", username: "abc@gmail.com", password: "abc"])
        defaultUser1.save()

        Person defaultUser2 = new Person([firstName: "Ankit", lastName: "Singh", username: "xyz@gmail.com", password: "xyz"])
        defaultUser2.save()
    }
    def destroy = {
    }
}
