class Other

  def implicit
    puts "Other implicit"
  end

  def override
    puts "Other implicit"
  end

  def altered
    puts "Other altered"
  end
end

class Child
  def initialize
    # Instantiate Other class for lokal access, for a better composition without inheritance
    @other = Other.new
  end

  def implicit
    @other.implicit
  end

  def override
    puts "Child override"
  end

  def altered
    puts "Child before altered"
    @other.altered
    puts "Child after altered"
  end
end

son = Child.new

son.implicit
son.override
son.altered
