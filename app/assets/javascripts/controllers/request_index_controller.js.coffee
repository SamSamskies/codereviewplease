@codeReview.controller 'RequestIndexCtrl', ['$scope', (scope) ->
  scope.initialize = (requests) ->
    scope.models = {}
    scope.models.requests = requests

  scope.setFilterText = (tag) ->
    scope.filterText = tag
]
