import contact.org.ep.Person
import contact.org.ep.TestGroup
class BootStrap {

    def init = { servletContext ->

        Person defaultUser1 = new Person([username: "abc@gmail.com", password: "abc"])
        defaultUser1.save()

        Person defaultUser2 = new Person([username: "xyz@gmail.com", password: "xyz"])
        defaultUser2.save()
    }
    def destroy = {
    }
}
