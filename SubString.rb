def subString(dictionary , str)
  hash=Hash.new(0)

  dictionary.each do |word|
    hash[word]=str.downcase.scan(word).count if str.include?(word)
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p subString(dictionary,"below")
p subString(dictionary,"Howdy partner, sit down! How's it going?")