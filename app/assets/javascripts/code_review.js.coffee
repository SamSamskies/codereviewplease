@codeReview = angular.module('codeReview', ['codeReview.filters'])
@codeReview.config(['$httpProvider', (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = angular.element('meta[name=csrf-token]').attr('content')
])

$(document).ready ->
  App.init()

App = {

  init: ->
    @savedComment = 'savedComment'
    hljs.initHighlightingOnLoad()
    @restoreComment() if $.cookie @savedComment
    @initListeners()

  initListeners: ->
    $('.fa-sign-out').mouseover ->
      $('.alt-logout').show()
    $('.fa-sign-out').mouseout ->
      $('.alt-logout').hide()

    $('.fa-bullhorn').mouseover ->
      $('.alt-new-request').show()
    $('.fa-bullhorn').mouseout ->
      $('.alt-new-request').hide()

    $(document).on 'ajax:success', '.request-comment', (e, xhr, status) ->
      $(@).fadeOut() if xhr

    $('#button-github').click =>
      $.cookie @savedComment, $('#comment_body').val() if $('#comment_body').val()

  restoreComment: ->
    $('#comment_body').val $.cookie @savedComment
    $.removeCookie @savedComment

}
