# Write your code here.
def dictionary
  dictionary =
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "at" => "@",
    "and" => "&",
  }
  dictionary
end

def word_substituter(string)
  tweet_array = string.split
  dict_hash = dictionary

  tweet_array = tweet_array.map do |word|
    if dict_hash.values.include?(word)
      word = dict_hash[word]
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener

end

def selective_tweet_shortener

end

def shortened_tweet_truncator

end
