trap "SIGINT" do
  print "\nExit? y/n: "
  input = gets.downcase.chomp!
  if input.include?('y')
    puts "\nExiting\nStatus code: 130"
    exit 130
  end
end

count = 0

loop do
  count += 1
  puts "test #{count}"
  sleep 1
end

# https://stackoverflow.com/questions/2089421/capturing-ctrl-c-in-ruby#2089454
