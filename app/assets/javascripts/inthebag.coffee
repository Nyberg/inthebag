$.fn.event = (name, fn) ->
  @unbind(name).bind name, fn

$('.message .close').on 'click', ->
  $(this).closest('.message').transition 'fade'
  return
