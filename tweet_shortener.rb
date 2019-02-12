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
    "you" => "u"
  }
  dictionary
end

def word_substituter(string)
  tweet_array = string.split(" ")
  dict_hash = dictionary
  new_tweet = []

  tweet_array.each do |word|
    if dict_hash.values.include?(word.downcase)
      new_tweet << dict_hash[word]
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener

end

def selective_tweet_shortener

end

def shortened_tweet_truncator

end
