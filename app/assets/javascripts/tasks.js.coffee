# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("button#add_member").click ->
    $("div#show_member").toggle()
    return

$(document).ready ->
  $("button#add_task").click ->
    $("div#show_task").toggle()
    return