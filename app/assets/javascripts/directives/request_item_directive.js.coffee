@codeReview.directive 'requestItem', ->
  restrict: 'AE'
  scope:
    requestId: '@'
    title: '@'
    commentCount: '@'
  templateUrl: '/assets/request.html'
