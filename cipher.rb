def cipher(string, value)
  result = string.chars.map do |letter|
    if letter =~ /[A-Za-z]/
      numbers = letter.ord
      adjusted_numbers = numbers - value

      if letter =~ /[A-Z]/
        adjusted_numbers = ((adjusted_numbers - 'A'.ord) % 26 + 'A'.ord)
      elsif letter =~ /[a-z]/
        adjusted_numbers = ((adjusted_numbers - 'a'.ord) % 26 + 'a'.ord)
      end

      adjusted_numbers.chr
    else
      letter  # Keep non-alphabetic characters unchanged
    end
  end

  puts result.join
end

puts "Input string"
string_getter = gets.chomp
puts "Input value"
value_getter = gets.to_i

cipher(string_getter, value_getter)
