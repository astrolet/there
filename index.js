require('coffee-script');

// Exports
[ 'care', 'more', 'polyglot'
].forEach(function(name) {
  var path = './lib/' + name.toLowerCase();
  exports[name] = require(path);
});

