# 1. A company has two types of employees: regular employees and managers. All
# employees have a name and a salary, but managers also have a bonus percentage
# that is added to their salary.
# Write a program that creates two classes, Employee and Manager, where Manager
# inherits from Employee. The Employee class should have methods to get and set
# the name and salary, and the Manager class should have an additional method
# to get and set the bonus percentage.


# define a class
class Employee
   # constructor method

   def initialize(n,s,d)
      @name, @salary, @days = n, s, d
   end
   def getDisplay
      puts @name
      puts @salary
   end

end
class Manager < Employee
  def getDisplay
    super
  end
  def getBonus

    @bonus = @salary / @days
    puts "Bonus is #{(@bonus / @salary*100).round(1)}%"
  end
   
end

mngr = Manager.new('aju',30000.0,30)
mngr.getDisplay
mngr.getBonus

