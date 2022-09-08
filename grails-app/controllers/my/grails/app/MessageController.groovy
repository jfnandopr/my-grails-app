package my.grails.app

import io.micrometer.core.annotation.Timed

class MessageController {

    @Timed
    def index() { 
        render "Welcome Grails App!"
    }
}
