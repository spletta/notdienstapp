jQuery(function($) {

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

// show/hide recurring options in event form
$('#event_recurring').on('change', function() {
    if($(this).is(':checked')) {
        $('.tr-recurring').show();
    }
    else {
        $('.tr-recurring').hide();
    }
}).trigger('change');

// show/hide pharmacy and customer info tr's
if($('#event_event_type').val() == 'Kundeninfos') {
$('.tr-pharmacy').hide(); //hide field on start
}

if($('#event_event_type').val() == 'Notdienst') {
$('.tr-info').hide(); //hide field on start
}

$('#event_event_type').change(function() {

 var $index = $('#event_event_type').index(this);

 if($('#event_event_type').val() != 'Notdienst') { //if this value is NOT selected
 $('.tr-pharmacy').hide(); //this field is hidden
 } 
 else {
 $('.tr-pharmacy').show();//else it is shown
 }

 if($('#event_event_type').val() != 'Kundeninfos') { //if this value is NOT selected
 $('.tr-info').hide(); //this field is hidden
 } 
 else {
 $('.tr-info').show();//else it is shown
 }
});

// show/hide multiple events for one day on the mobile version
var InfiniteRotator =
    {
        init: function()
        {	        
            //initial fade-in time (in milliseconds)
            var initialFadeIn = 100;
 
            //interval between items (in milliseconds)
            var itemInterval = 8000;
 
            //cross-fade time (in milliseconds)
            var fadeTime = 2500;
 
            //count number of items
            var numberOfItems = $('.rotating-item').length;
 
            //set current item
            var currentItem = 0;
 
            //show first item
            $('.rotating-item').eq(currentItem).fadeIn(initialFadeIn);
 
            //loop through the items
            var infiniteLoop = setInterval(function(){
                $('.rotating-item').eq(currentItem).hide();
 
                if(currentItem == numberOfItems -1){
                    currentItem = 0;
                }else{
                    currentItem++;
                }
                $('.rotating-item').eq(currentItem).show();
 
            }, itemInterval);
        }
    };
 
    InfiniteRotator.init();

});
