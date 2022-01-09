temp = 'This is an example!'


def reverse_word(string)
  result = ''
  tmp = ''

  string.each_char do |char|
    if char != ' '
      tmp << char
    else
      result += tmp.reverse
      result << char
      tmp = ''
    end
  end
  result += tmp.reverse unless tmp.empty?
  result
end

puts reverse_word(temp)

# def reverse_words(str)
#   str.gsub(/\S+/, &:reverse)
# end

# def reverse_words(str)
#   str.gsub(/[^\s]+/, &:reverse)
# end

# def reverse_words(str)
#   str.split(/(\s+)/).map(&:reverse).join
# end

# def reverse_words(str)
#   str.reverse.split(/(\s+)/).reverse.join
# end

# def reverse_words(str)
#   str.split(/ /).each(&:reverse!).join(' ')
# end
