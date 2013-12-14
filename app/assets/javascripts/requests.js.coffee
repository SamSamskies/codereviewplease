$(document).ready ->
  App.init()


App = {
  init: ->
    $('.fa-sign-out').mouseover ->
      $('.alt-logout').show()
    $('.fa-sign-out').mouseout ->
      $('.alt-logout').hide()

    $('.fa-bullhorn').mouseover ->
      $('.alt-new-request').show()
    $('.fa-bullhorn').mouseout ->
      $('.alt-new-request').hide()
}