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
    
    def logout() {
        session.invalidate()
        flash.logoutMessage = "Successfully Logged out."
        redirect(action: "index")
    }

}
