# Parent class with simple output menthods
class Parent

  def implicit
    puts "Parent implicit"
  end

  def altered
    puts "Parent altered"
  end

  def override
    puts "Parent override"
  end

  def h_line
    puts "----------"
  end
end

# Child inherite from Parent & overrides some methods & calls superclass for Parent.altered
class Child < Parent

  # Overrides the default method inheritated from Parent.override
  def override
    puts "Child override"
  end

  def altered
    puts "Child before Parent altered"

    # Calls the same method in the Parent class
    super
    puts "Child after Parent altered"
  end
end

dad = Parent.new
son = Child.new

dad.implicit
son.implicit
dad.h_line

dad.override
son.override
son.h_line

dad.altered
son.altered
