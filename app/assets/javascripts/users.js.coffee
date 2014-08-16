# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("button#show").click ->
    $("div#add_project").toggle()
    return

  return
$(document).ready ->
	$("div#task").click ->
	  window.location = "projects/:project_id/tasks"
	  return
