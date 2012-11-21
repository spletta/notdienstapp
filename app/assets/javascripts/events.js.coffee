# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
$('#datetimepicker').datetimepicker({
  timeFormat: 'HH:mm z'
});

$.datepicker.regional['de'] = {
	closeText: 'Schließen',
	prevText: '<',
	nextText: '>',
	currentText: 'Jetzt',
	monthNames: ['Januray','Feburar','März','April','Mai','Juni',
	'Juli','August','September','Oktober','November','Dezember'],
	monthNamesShort: ['Jan','Feb','Mär','Apr','Mai','Jun',
	'Jul','Aug','Sep','Okt','Nov','Dez'],
	dayNames: ['Sonntag','Montag','Dienstag','Mittwoch','Donnerstag','Freitag','Samstag'],
	dayNamesShort: ['Son','Mon','Die','Mit','Don','Fri','Sam'],
	dayNamesMin: ['So','Mo','Di','Mi','Do','Fr','Sa'],
	weekHeader: 'Wo.',
	dateFormat: 'dd.mm.yy',
	firstDay: 0,
	isRTL: false,
	showMonthAfterYear: false,
	yearSuffix: ''
};
$.datepicker.setDefaults($.datepicker.regional['de']);


$.timepicker.regional['de'] = {
	timeOnlyTitle: 'Zeit wählen',
	timeText: 'Uhrzeit',
	hourText: 'Stunde',
	minuteText: 'Minute',
	secondText: 'Sekunde',
	millisecText: 'Milisekunde',
	timezoneText: 'Zeitzone',
	currentText: 'Jetzt',
	closeText: 'Schließen',
	timeFormat: 'HH:mm',
	amNames: ['AM', 'A'],
	pmNames: ['PM', 'P'],
	isRTL: false
};
$.timepicker.setDefaults($.timepicker.regional['de']);