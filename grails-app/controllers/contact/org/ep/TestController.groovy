package contact.org.ep

class TestController {
    def index() {
        println "session id - ${session.myUserId}"

        if (session.myUserId) {
            println "Session is present"
            [myInstance: TestGroup.findAllByMyUser(Person.get(session.myUserId))]
        } else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }

    }


    def save() {

        if (session.myUserId) {
            println "Session is present"
            Test test = new Test()
            test.firstName = params.fname
            test.lastName = params.lname
            test.myUser = Person.get(session.myUserId)
            test.myGroup = TestGroup.get(Integer.parseInt(params.groupId))

            test.save(flush: true)
            flash.successCreate = "Contact has been successfully created."
            redirect(action: "show")
        }

        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }

    def show() {
        if (session.myUserId) {
            List listInstance = Test.findAllByMyUser(Person.get(session.myUserId))
            render(view: 'show', model: [abc:listInstance])
        }

        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }

    }

    def delete() {

        if (session.myUserId) {
            def deleteInstance = Test.get(params.id)
            println deleteInstance

            if(deleteInstance == null) {
                flash.unsuccessDel = "Cannot Delete!! User with Id ${params.id} doesn't exist."
                redirect(action: "show")
                return
            }
            deleteInstance.delete()
            flash.successDel = "Successfully Deleted."
            redirect(action: "show")
        }

        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }

    }

    def update() {

        if (session.myUserId) {
            def updateInstance = Test.get(Integer.parseInt(params.id))
            if(updateInstance == null) {
                flash.unsuccessUp = "Cannot Update!! User with Id ${params.id} doesn't exist."
                redirect(action: "show")
                return
            }
            [updateInstance: updateInstance]
        }

        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }

    }

    def edit() {

        if(session.myUserId){
            def id = Integer.parseInt(params.id)
            def editInstance = Test.get(id)
            editInstance.firstName = params.fname
            editInstance.lastName = params.lname
            editInstance.myGroup = TestGroup.get(Integer.parseInt(params.groupId))
            editInstance.save(flush: true)
            flash.successUp = "Successfully Updated"
            redirect(action: "show")
        }
        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }
}
