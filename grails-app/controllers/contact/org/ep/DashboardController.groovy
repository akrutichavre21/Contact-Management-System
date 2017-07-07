package contact.org.ep

class DashboardController {

    def index() {
        if (session.myUserId) {
            [fav: Test.findAllByFavFlag(true)]
        } else {
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }

    def showContact() {
        if (session.myUserId) {

            def group = TestGroup.findAllByMyUser(Person.get(session.myUserId))
            println group
            List myList = []
            List noGroupList = Test.findAllWhere(myUser: Person.get(session.myUserId), myGroup: null)
            group.each {

                def myContact = Test.findAllByMyUserAndMyGroup(Person.get(session.myUserId), it)
                if(myContact) {
                    myList.add(myContact)
                }

            }
            println myList
            [contact : [myList, noGroupList]]

        } else {
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }

    def reminder() {
        if (session.myUserId) {
            def contact = Test.findAllByMyUser(Person.get(session.myUserId))
            Date date = new Date()
            int currentMonth = date.getMonth()
            List dobList = []
            contact.findAll {
                int myMonth = it.dob.getMonth()
                if(myMonth == currentMonth) {
                    dobList.add(it)
                }
            }
            [dobList : dobList]
        } else {
            flash.notLogin = "User not logged in."
            redirect controller: "mylogin", action: "index"
        }
    }
}
