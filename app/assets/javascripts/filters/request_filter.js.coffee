angular.module('codeReview.filters.request', []).filter('request', [->
  (requests, input) ->
    return requests if (input == "" || input == undefined)
    input = input.toLowerCase()

    requests.findAll (request) ->
      titleHasMatch = request.title.toLowerCase().match(input)

      requestHasTag = request.tags.find (tag) ->
        tag.toLowerCase() == input

      titleHasMatch || requestHasTag
])
