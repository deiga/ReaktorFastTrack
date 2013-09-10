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
    sum = _.reduce(_.take(_.rest(input, index+1), 4), (memo, num) ->
      return memo * num
    , n)
    if sum > largest_product
      largest_product = sum
  )
  return largest_product

console.log calculator(make_numbers_string())
