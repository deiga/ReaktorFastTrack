_ = require('underscore')

make_numbers_string = () ->
    text = ""
    possible = "0123456789";

    for i in [0...1000] by 1
        text += possible.charAt(Math.floor(Math.random() * possible.length))
    return text

calculator = (input) ->
  _.max(_.map(input, (a, index, c) ->
    _.reduce(_.take(_.rest(input, index), 5), (memo, num) ->
      memo * num
    , 1)
  ))

console.log calculator(make_numbers_string())
