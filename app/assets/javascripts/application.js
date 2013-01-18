// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require jquery-ui-timepicker-addon.js
//= jquery-ui-sliderAccess.js
//= require bootstrap
//= require rails.validations
//= require rails.validations.simple_form
//= require_tree .

// 60000ms = 60 seconds
//setTimeout(function(){
//  window.location.reload()
//}, 60000);

// HTML5 refresh cache manifest
function updateSite(event) {
    window.applicationCache.swapCache();
}
window.applicationCache.addEventListener('updateready',
    updateSite, true);

$(function() {

    // function timeRefresh()...

    if ($('#refreshable').length) {
        setTimeout(function(){
		  window.location.reload()
		}, 60000);
		
		window.applicationCache.addEventListener('updateready',
		    updateSite, true);
    }
});
	
// Logging for offline events
function logEvent(event) {
    console.log(event.type);
}

window.applicationCache.addEventListener('checking',logEvent,false);
window.applicationCache.addEventListener('noupdate',logEvent,false);
window.applicationCache.addEventListener('downloading',logEvent,false);
window.applicationCache.addEventListener('cached',logEvent,false);
window.applicationCache.addEventListener('updateready',logEvent,false);
window.applicationCache.addEventListener('obsolete',logEvent,false);
window.applicationCache.addEventListener('error',logEvent,false);