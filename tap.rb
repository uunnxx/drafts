(1..10)                  .tap {|x| puts "original: #{x}" }
  .to_a                  .tap {|x| puts "array:    #{x}" }
  .select {|x| x.even? } .tap {|x| puts "evens:    #{x}" }
  .map {|x| x*x }        .tap {|x| puts "squares:  #{x}" }

pp
puts "---------------------------------------------------"
pp

(1..10)
  .tap{|x| puts "tap: #{x}"}
  .to_a.tap{|x| puts "to_a: #{x}"}
  .select(&:even?).tap{|x| puts "select(&:even?): #{x}"}
  .map{|x| x*x}.tap{|x| puts "map{|x| x*x}: #{x}"}

# (1..10).map{|x| x*x}.tap {|x| puts "#{x}"}
# (1..10).map(&[:*]).tap {|x| puts "#{x}"}
# (1..10).map{|x| x*x}.tap {|x| puts "#{x}"}


puts "---------------------------------------------------"
puts "---------------------------------------------------"
puts "---------------------------------------------------"
def some_method(*args, &block)
  puts "args: #{args.inspect}"
  puts "block: #{block.inspect}"
end

some_method(:whatever)
# args: [:whatever]
# block: nil

puts "---------------------------------------------------"
some_method(&:whatever)
# args: []
# block: #<Proc:0x007fd23d010da8>

puts "---------------------------------------------------"
some_method(&"whatever")
# TypeError: wrong argument type String (expected Proc)
# (String doesn't respond to #to_proc)
puts "---------------------------------------------------"


