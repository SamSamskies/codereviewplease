$(document).ready ->
  App.init()

App = {
  init: ->
    hljs.initHighlightingOnLoad()
    @initLisenters()

  initLisenters: ->
    $(document).on 'ajax:success', '.request-comment', (e, xhr, status) ->
      $(@).fadeOut() if xhr
}