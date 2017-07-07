package contact.org.ep
import java.text.SimpleDateFormat

class TestController {
    /*TestGroup emptyGroup = new TestGroup([name: "No Group", myUser: Person.get(session.myUserId) ])*/

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
            test.email = params.email
            println "\n\n\n"
            println params
            def date = new SimpleDateFormat("yyyy-MM-dd").parse(params.dob)
            if(date.after(new Date())) {
                flash.dateError = "Enter a Valid Birth Date."
                redirect(action: "index")
                return
            }
            test.dob = date
            test.phone = Long.parseLong(params.phone)
            test.myUser = Person.get(session.myUserId)
            if((params.groupId).equals("noGroup")){
                test.myGroup = null
            } else {
                test.myGroup = TestGroup.get(Integer.parseInt(params.groupId))
            }
            if((params.fav).equals("fav")) {
                test.favFlag = true
            } else {
                test.favFlag = false
            }
            println test
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
            if(deleteInstance.myUser != Person.get(session.myUserId)) {
                flash.cannotDelete = "The Group cannot be Deleted."
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

            def groupSelected = updateInstance.myGroup
            def allGroup = TestGroup.findAllByMyUser(Person.get(session.myUserId))
            [updateInstance: [updateInstance, allGroup, groupSelected]]
        }

        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }

    }

    def edit() {

        if(session.myUserId){
            println "Params wala ID : ${params.id}"
            def id = Integer.parseInt(params.id)
            def editInstance = Test.get(id)
            if(editInstance.myUser != Person.get(session.myUserId)) {
                flash.cannotUpdate = "The Group cannot be Updated."
                redirect(action: "show")
                return
            }
            editInstance.firstName = params.fname
            editInstance.lastName = params.lname
            editInstance.email = params.email

            def date = new SimpleDateFormat("yyyy-MM-dd").parse(params.dob)
            if(date.after(new Date())) {
                flash.dateError = "Enter a Valid Birth Date."
                redirect(action: "index")
                return
            }

            editInstance.dob = date
            editInstance.phone = Long.parseLong(params.phone)

            if((params.groupId).equals("noGroup")){
                editInstance.myGroup = null
            } else {
                editInstance.myGroup = TestGroup.get(Integer.parseInt(params.groupId))
            }

            if((params.fav).equals("fav")) {
                editInstance.favFlag = true
            } else {
                editInstance.favFlag = false
            }

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
