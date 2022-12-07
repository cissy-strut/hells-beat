import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

//= require hammer
//= require hammer.min

//= require jquery.hammer

//= require angular.hammer
//= require angular.hammer.min

//= require hammer-time
//= require hammer-time.min

//= require touch-emulator
