def find_words(phrase)
  ret = []
  #downcase the phrase
  phrase = phrase.downcase
  #remove non-word characters
  phrase.gsub!(/\W/, ' ')
  arr_words = phrase.split(' ')
  my_hash = {}

  for word in arr_words
    if my_hash.has_key?(word) == false
      my_hash.store(word, true)
    end
  end

  my_hash.each do |item|
    ret.push([item[0], 0])
  end

  count = 0
  while count < my_hash.length
    for word in arr_words
      if ret[count][0] == word
        ret[count][1] = ret[count][1] + 1
      end
    end
    count += 1
  end

  return ret
end

find_words("Hello World!")
find_words("To be, or not to be.")
