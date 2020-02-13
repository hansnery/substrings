dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  letters = words.split("")
  filtered_words = []
  duplicates_array = []

  letters.each do |letter|
    if letter.match(/[a-zA-Z\s]/)
      filtered_words << letter.downcase
    end
  end
  
  result = Hash.new
  filtered_words = filtered_words.join("")
  filtered_words = filtered_words.split(" ")

  filtered_words.each do |word|
    dictionary.each do |dword|
      if word =~ /#{dword}/
        duplicates_array << dword
        result.store(dword, 0)
      end
    end
  end

  duplicates_array.each do |duplicate|
    result.each do |key, value|
      if key == duplicate
        result[duplicate] += 1
      end
    end
  end
  
  p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)