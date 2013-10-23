module WordHelper
  
  # expose module instance methods as module methods, so this module
  # can be used stand-alone or mixed into other classes.
  extend self

  def tally(phrase)
    phrase.split.inject(Hash.new(0)) do |hash, word|
      hash[word.to_sym] += 1
      hash
    end
  end

  def filter(phrase, blacklist)
    blacklist.split.inject(phrase) do |memo, word_to_redact|
      redact_pattern = /\b#{word_to_redact}\b/i
      memo.gsub( redact_pattern, '*' * word_to_redact.length )
    end
  end

  def link_to_users(message, domain)
    user_pattern = /@(\w+)/
    message.gsub(user_pattern, "<a href='#{domain}\\1'>@\\1</a>")
  end

end
