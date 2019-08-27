require "./sentiment/*"

module Cadmium
  module StringExtension
    # Get the sentiment of a string. Same as running
    # `Cadmium::Sentiment.analyze(STRING)`.
    def sentiment(inject = nil)
      Cadmium::Sentiment.analyze(self, inject)
    end

    # Determines if a string is more positive than negative.
    # Returns `Bool`.
    def is_positive?
      sentiment = self.sentiment
      sentiment[:positive] > sentiment[:negative]
    end

    # Determines if a string is more negative than positive.
    # Returns `Bool`.
    def is_negative?
      sentiment = self.sentiment
      sentiment[:negative] > sentiment[:positive]
    end
  end
end
