_ = require('underscore')

make_numbers_string = () ->
    text = ""
    possible = "0123456789";

    for i in [0...1000] by 1
        text += possible.charAt(Math.floor(Math.random() * possible.length))
    return text

calculator = (input) ->
  largest_product = 0
  _.each(input, (n, index) ->
    sum = _.reduce(_.take(_.rest(input, index), 5), (memo, num) ->
      memo * num
    , 1)
    largest_product = Math.max(sum, largest_product)
    return
  )
  return largest_product

console.log calculator(make_numbers_string())
