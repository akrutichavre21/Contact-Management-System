package contact.org.ep

class MyloginController {

    def index() { }

    def login() {
        Person person = Person.findByUsername(params.username)
        if(person) {
            Person person1 = Person.findByPassword(params.password)
            if(person1) {

                session.myUserId = person1.id
                flash.loginSuccess = "Successfully Logged in."
                redirect(controller: "test", action: "index")
            }

            else {
                flash.passwordIncorrect = "Password is incorrect"
                redirect(action: "index")
            }
        }

        else {
            flash.usernameIncorrect = "Username is incorrect"
            redirect(action: "index")
        }
    }
    def signup() {
    }

    def signupSave() {

        def found = Person.findAllByUsername(params.email)
        if(found){
            flash.alreadyMember = "The User is already a member"
            redirect(action: "index")
            return
        }

        Person person = new Person()
        person.firstName = params.fname
        person.lastName = params.lname
        person.username = params.email
        person.password = params.password
        person.save(flush: true)
        Person person1 = Person.findByUsername(params.email)
        session.myUserId = person1.id
        flash.successSignup = "Successfully Signed Up"
        redirect(controller: "test", action: "index")
    }
    def logout() {
        session.invalidate()
        flash.logoutMessage = "Successfully Logged out."
        redirect(action: "index")
    }

}
