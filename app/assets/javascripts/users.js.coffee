# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#user_pharmacy_tokens').tokenInput '/pharmacies.json',
    theme: 'facebook',
    prePopulate: $('#user_pharmacy_tokens').data('load'),
    propertyToSearch: "name",
    preventDuplicates: true,
    animateDropdown: true,
    hintText: 'Suchen Sie nach einen Apotheke',
    noResultsText: 'Leider haben wir dieses Apotheke noch nicht in unseren Datenbank',
    searchingText: 'Suchen...',
    searchDelay: 1