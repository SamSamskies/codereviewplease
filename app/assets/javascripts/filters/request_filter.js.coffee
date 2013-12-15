angular.module('codeReview.filters.request', []).filter('request', [->
  (requests, input) ->
    return requests if (input == "" || input == undefined)
    results = []
    input = input.toLowerCase()

    requests.forEach (request) ->
      titleHasMatch = request.title.toLowerCase().match(input)
      results.push request if titleHasMatch

      requestHasTag = request.tags.find (tag) ->
        tag.toLowerCase() == input

      results.push request if requestHasTag

    results
])
