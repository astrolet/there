# Additional data for lin's Ensemble.
# The English names will be used if no other words are found in `./care.coffee`.

# Any of the init categories can take more data.
# However check what columns are expected and in what order.
more = further: []

# These are objects above 10K, which need their Swiss Ephemeris IDs adjusted.
# None of them have unicode symbols.  That's the empty string being pushed.
for o in [
  [ 128,    "Nemesis"]
  [ 7066,   "Nessus"]
  [ 20000,  "Varuna"]
  [ 50000,  "Quaoar"]
  [ 90377,  "Sedna"]
  [ 136108, "Haumea"]
  [ 136199, "Eris"]
  [ 136472, "Makemake"]
]
  o.push ""
  o[0] += 10000
  more.further.push o

module.exports = more

