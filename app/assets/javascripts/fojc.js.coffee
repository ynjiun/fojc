# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#$('.label-with-popover').popover(placement: 'right') #notice: 'right' is default

$('a[rel=popover]').popover('show')
$('a[toggle=tooltip]').tooltip('show')