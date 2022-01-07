class Module
  def class_attr_reader(*symbols)
    symbols.each do |symbol|
      self.class.send(:define_method, symbol) do
        class_variable_get("@@#{symbol}")
      end
    end
  end

  def class_attr_writer(*symbols)
    symbols.each do |symbol|
      self.class.send(:define_method, "#{symbol}=") do |value|
        class_variable_set("@@#{symbol}", value)
      end
    end
  end

  def class_attr_accessor(*symbols)
    class_attr_reader(*symbols)
    class_attr_writer(*symbols)
  end
end


class Fate

  class_attr_reader :number_instantiated

  NAMES = ['Klotho', 'Atropos', 'Lachesis'].freeze
  @@number_instantiated = 0

  def initialize
    if @@number_instantiated >= NAMES.size
      raise ArgumentError, "Sorry, there are only #{NAMES.size} Fates."
    end

    @name = NAMES[@@number_instantiated]
    @@number_instantiated += 1
    puts "I give you... #{@name}!"
  end
end

Fate.new
Fate.new
Fate.new
# Fate.new


puts Fate.number_instantiated
