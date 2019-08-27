# Sentiment analysis

The Sentiment module uses the [AFINN-165](http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010) wordlist and [Emoji Sentiment Ranking](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0144296) to provide sentiment analysis on arbitrary blocks of text.
## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     sentiment:
       github: cadmiumcr/sentiment
   ```

2. Run `shards install`

## Usage

```crystal
require "cadmium_sentiment"
```

```crystal
sentiment = Cadmium.sentiment

"Crystal is seriously the best programming language.".sentiment
# or
sentiment.analyze("Crystal is seriously the best programming language.")
# =>  {
        score: 3,
        comparative: 0,
        tokens: ["Crystal", "is", "seriously", "the", "best", "programming", "language"],
        words: ["best"],
        positive: ["best"],
        negative: []
      }

"I really hate Python".is_negative?
# => true

"I really 💗 Crystal. It's my favorite.".is_positive?
# => true
```

## Contributing

1. Fork it (<https://github.com/cadmiumcr/sentiment/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Watson](https://github.com/watzon) - creator and maintainer
