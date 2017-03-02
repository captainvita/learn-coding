module Other

  def implicit
    puts "Other implicit"
  end

  def override
    puts "Other implicit"
  end

  def self.altered
    puts "Other altered"
  end
end

class Child
  #Include Other Module and it's methods
  include Other

  def override
    puts "Child override"
  end

  def altered
    puts "Child before altered"
    Other.altered
    puts "Child after altered"
  end
end

son = Child.new

son.implicit
son.override
son.altered
