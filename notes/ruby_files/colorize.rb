require 'colorize'


class Calculator
  def divide(x, y)
    x / y
  end
 end

puts c = Calculator.new
puts ">> c.class: ".cyan.swap \
  << "#{c.class}".cyan.bold
puts ">> c.class.superclass: ".yellow.swap \
  << "#{c.class.superclass}".yellow.bold
puts ">> c.class.superclass.superclass: ".red.swap \
  << "#{c.class.superclass.superclass}".red.bold
puts c.divide(10, 2).to_s.magenta.swap

puts '----------------------------------------------------------------'.green.bold

class MultiplyingCalculator < Calculator
  def multiply(x, y)
    x * y
  end
end

puts mc = MultiplyingCalculator.new
puts ">> mc.class: ".green.swap \
  << "#{mc.class}".green.bold
puts ">> mc.class.superclass: ".cyan.swap \
  << "#{mc.class.superclass}".cyan.bold
puts ">> mc.class.superclass.superclass: ".yellow.swap \
  << "#{mc.class.superclass.superclass}".yellow.bold
puts ">> mc.class.superclass.superclass.superclass: ".red.swap \
  << "#{mc.class.superclass.superclass.superclass}".red.bold

puts mc.multiply(10, 2).to_s.magenta.swap
puts mc.divide(10, 2).to_s.magenta.swap

puts '----------------------------------------------------------------'.green.bold

class BinaryMultiplyingCalculator < MultiplyingCalculator
  def multiply(x, y)
    pp "self: #{self}, super: #{super}"
    result = super(x, y)
    result.to_s(2)
  end
end

puts bmc = BinaryMultiplyingCalculator.new
puts ">> bmc.class: ".blue.swap \
  << "#{bmc.class}".blue.bold
puts ">> bmc.class.superclass: ".green.swap \
  << "#{bmc.class.superclass}".green
puts ">> bmc.class.superclass.superclass: ".cyan.swap \
  << "#{bmc.class.superclass.superclass}".cyan
puts ">> bmc.class.superclass.superclass.superclass: ".yellow.swap \
  << "#{bmc.class.superclass.superclass.superclass}".yellow.bold
puts ">> bmc.class.superclass.superclass.superclass.superclass: ".red.swap \
  << "#{bmc.class.superclass.superclass.superclass.superclass}".red.bold

puts bmc.multiply(10, 2).magenta.swap


