# https://cse.google.com/cse
curl \
  "https://customsearch.googleapis.com/customsearch/v1?cx=$(pass show com.google/search/cx)&q=$1&key=$(pass show com.google/search/key)" \
  --header 'Accept: application/json' \
  --compressed
