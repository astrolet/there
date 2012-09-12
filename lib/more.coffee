# Additional data for [lin](http://astrolet.github.com/lin)'s
# [`Ensemble`](http://astrolet.github.com/lin/annotations/ensemble.html).
# The English names will be used if no other words are found in `./care.coffee`.

# Any of the `@init` categories can take more data.
# However check what columns are expected and in what order.
more = further: []

# These are objects above 10K, which need their Swiss Ephemeris IDs adjusted.
# None of them have unicode symbols.  That's the empty string being pushed.
# The Wikipedia IDs are predictable so far - check new entries, just in case...
for o in [
  [ 5145,   "Pholus"]
  [ 7066,   "Nessus"]
  [ 20000,  "Varuna"]
  [ 28978,  "Ixion"]
  [ 38628,  "Huya"]
  [ 50000,  "Quaoar"]
  [ 90377,  "Sedna"]
  [ 90482,  "Orcus"]
  [ 136108, "Haumea"]
  [ 136199, "Eris"]
  [ 136472, "Makemake"]
]
  o.push "" # Unicode symbol
  o.push "#{o[0]}_#{o[1]}" # Wikipedia ID
  o[0] += 10000
  more.further.push o

module.exports = more

