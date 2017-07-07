package contact.org.ep

class TestgroupController {

    def index() {
        if(!session.myUserId) {
            println "Session is not present"
            redirect controller: "mylogin", action: "index"
        }
    }

    def save() {
        if(session.myUserId) {
            TestGroup saveInstance = new TestGroup()
            saveInstance.name = params.gname
            saveInstance.save(flush: true)
            saveInstance.myUser = Person.get(session.myUserId)
            saveInstance.save()
            flash.successSave = "Group has been successfully Created."
            redirect(action: "show")
        }

        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }

    }

    def show() {
        if(session.myUserId) {
            List listInstance = TestGroup.findAllByMyUser(Person.get(session.myUserId))
            [abc: listInstance]
        }
        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }

    def delete() {
        if(session.myUserId) {
            TestGroup deleteInstance = TestGroup.get(Integer.parseInt(params.id))
            if (!deleteInstance) {
                flash.deleteUnsuccess = "Cannot Delete Group with Id ${params.id}"
            }
            if(deleteInstance.myUser != Person.get(session.myUserId)) {
                flash.cannotDelete = "The Group cannot be Deleted."
                redirect(action: "show")
                return
            }
            def contactDelete = Test.findAllByMyGroupAndMyUser(deleteInstance, Person.get(session.myUserId))
            contactDelete.each { contact ->
                contact.myGroup = null
            }

            deleteInstance.delete()
            flash.deleteSuccess = "Group has been Deleted."
            redirect(action: "show")
        }
        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }

    def update() {
        if(session.myUserId) {
            def updateInstance = TestGroup.get(Integer.parseInt(params.id))
            if (!updateInstance) {
                flash.unsuccessfulUpdate = "Cannot Update Group with Id ${params.id}"
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
        if(session.myUserId) {
            TestGroup editInstance = TestGroup.get(Integer.parseInt(params.id))
            if(editInstance.myUser != Person.get(session.myUserId)) {
                flash.cannotUpdate = "The Group cannot be Updated."
                redirect(action: "show")
                return
            }
            editInstance.name = params.gname
            editInstance.save(flush: true)

            flash.successUpdate = "Successfully Updated"
            redirect(action: "show")
        }
        else {
            println "Session is not present"
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }

}

