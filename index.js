require('coffee-script');

// Exports
[ 'care', 'more'
].forEach(function(name) {
  var path = './lib/' + name.toLowerCase();
  exports[name] = require(path);
});

