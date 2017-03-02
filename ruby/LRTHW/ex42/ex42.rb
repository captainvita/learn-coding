## Animal is-a object look at the extra credit
class Animal
end

## Dog has a classAnimal
class Dog < Animal

  def initialize(name)
    ## Dog has a name
    @name = name
  end
end

## Cat has a class Animal
class Cat < Animal

  def initialize(name)
    ## Cat has a name
    @name = name
  end
end

## Person is a objecy
class Person

  def initialize(name)
    ## Person has a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee has a class Person
class Employee < Person

  def initialize(name, salary)
    ## Calles the initialize method of class Person
    super(name)
    ## Employee has a salary
    @salary = salary
  end

end

## Fish is a objecy
class Fish
end

## Salmon has a class Fish
class Salmon < Fish
end

## ??
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## ??
satan = Cat.new("Satan")

## ??
mary = Person.new("Mary")

## Mary is-a Person and has-a Cat satan
mary.pet = satan

## ??
frank = Employee.new("Frank", 120000)

## ??
frank.pet = rover

## ??
flipper = Fish.new()

## ??
crouse = Salmon.new()

## ??
harry = Halibut.new()
