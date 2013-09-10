// Generated by CoffeeScript 1.6.3
(function() {
  var calculator, make_numbers_string, _;

  _ = require('underscore');

  make_numbers_string = function() {
    var i, possible, text, _i;
    text = "";
    possible = "0123456789";
    for (i = _i = 0; _i <= 999; i = _i += 1) {
      text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
  };

  calculator = function(input) {
    var largest_product, numbers;
    console.log(input);
    numbers = input;
    largest_product = 0;
    _.each(numbers, function(n, index) {
      var sum;
      sum = _.reduce(_.take(_.rest(numbers, index + 1), 4), function(memo, num) {
        return memo * num;
      }, n);
      if (sum > largest_product) {
        return largest_product = sum;
      }
    });
    return largest_product;
  };

  console.log(calculator(make_numbers_string()));

}).call(this);
