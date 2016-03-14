// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
var blocmetrics = {};
  blocmetrics.report = function(eventName) {
    //Create an event JSON object to send to analytics service.
    var event = {event: { name: eventName }};
    // Initialize a new XMLHttpRequest aka AJAX request.
    var request = new XMLHttpRequest();
    // Set HTTP method to POST/ the url of events endpoint, and allow the request to run asynchronously.
    request.open("POST", "http://localhost:3000/api/events", true);
    // Tells API::EventsController to process the request as JSON.
    request.setRequestHeader('Content-Type', 'application/json');
    // Send request
    request.send(JSON.stringify(event));
  };
