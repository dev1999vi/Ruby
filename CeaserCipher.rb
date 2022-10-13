def CeaserCipher(str, n)
  letters = ('a'..'z').to_a
  letterscap = ('A'..'Z').to_a
  str.chars.map do |x|
    if letters.include?(x)
      letters[letters.find_index(x) + n - letters.length]
    elsif letterscap.include?(x)
      letterscap[letterscap.find_index(x) + n - letterscap.length]
    else
      x
    end
  end.join
end

str = gets.chomp
n = gets.chomp.to_i

puts CeaserCipher(str, n)
