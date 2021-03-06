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
    if dict_hash.keys.include?(word.downcase)
      new_tweet << dict_hash[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts(word_substituter(tweet))
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      new_tweet[0..139]
    else
      new_tweet
    end
  else
    tweet
  end
end
