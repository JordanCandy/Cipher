puts "Put in string"
special_string = gets.chomp
puts "Put in a value"
value = gets.to_i

special_string.each_char do |char|
  original = char.ord
  if (original >= 65 && original <= 90) || (original >= 97 && original <= 122)
    fix = original + 1
    modified = (fix + value - 65) % 26 + 65  # Wrap around for uppercase letters
    print modified.chr
  else
    fix = original - 1
    modified = (fix + value - 97) % 26 + 97  # Wrap around for lowercase letters
    print modified.chr
  end
end
