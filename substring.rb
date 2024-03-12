dictionary  = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts "Input:"
input = gets.chomp.downcase

match = []
word_counts = Hash.new(0)

dictionary.each do |word|
  pattern = /#{word}/
  matches = input.scan(pattern)
  matches.each do |match|
    match << match
    word_counts[word] += 1
  end
  match.concat(matches)
end

match.compact!

puts "Word counts:"
puts word_counts.inspect
