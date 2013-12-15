@codeReview = angular.module('codeReview', ['codeReview.filters'])
@codeReview.config(['$httpProvider', (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = angular.element('meta[name=csrf-token]').attr('content')
])
