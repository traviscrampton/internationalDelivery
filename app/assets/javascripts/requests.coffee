$(document).on "page:change", ->
  $('#unitedstates').click ->
   $('#Australian').fadeToggle()
   $('#American').remove()

  $('#Australia').click ->
    $('#American').fadeToggle()
    $('#Australian').remove()
