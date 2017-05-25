class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}."
  end

end

class Student < Person

  def learn
      puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object!"
  end

end

chris = Instructor.new("Chris")
chris.greeting

christina = Student.new("Christina")
christina.greeting

chris.teach
christina.learn
christina.teach #christina is class Student that inherited class Person.
                #As an instance of class Student, the class Instructor instance method 'teach' is not applicable to her
                
