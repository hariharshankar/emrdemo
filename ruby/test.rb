
$global_var=10
class Class1
 def print_global
	puts "global var is #$global_var"
 end
end
class Class2
 def print_global
        puts "global var is #$global_var"
 end
end


class1obj=Class1.new
class1obj.print_global
class2obj=Class2.new
class2obj.print_global

class Customer
 @@no_of_customers=0
 def initialize(id,name,addr)
	@cust_id=id
	@cust_name=name
	@cust_addr=addr
	@@no_of_customers+=1
 end
 def display_details()
	puts "customer id #@cust_id"
	puts "customer name #@cust_name"
	puts "customer add #@cust_addr"
 end
#class method
 def self.total_no_customers()
	puts "total:#@@no_of_customers"
 end
end

# one parameter

 def test(a1="ruby")
  	puts " this is #{a1}"
        
 end
test
#create instance
cust1=Customer.new("1","jo","chennia")
cust2=Customer.new("2","do","madras")
#call methods
cust1.display_details()
cust2.display_details()
#call class method
Customer.total_no_customers
#two parameter
def method_name(var1,var2)
	puts "this is #{var1}"
	puts "this is #{var2}"
end
method_name 23,34
def test
	i=100
	j=200
return i,j
end
var = test
puts var

#two parameter
def add(a,b)
	a+b
end
puts add(1,2)

#any no. of param
def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"

#recieves  param and treat them as an array
def add(a,b,c)
 a + b + c
end
numbers_to_add =[12,13,15]
puts add(*numbers_to_add)

#subclassing
class Mammal
 def breathe
	puts "inhales and exhales"
 end
end

class Cat < Mammal
 def speak
  	puts "meow"
 end
end
tom = Cat.new
tom.breathe
tom.speak

#overiding
class Bird  
      def clean  
        puts "I am cleaning my feathers."  
      end  
      def fly  
        puts "I am flying."  
      end  
    end  
      
    class Penguin < Bird  
      def fly  
        puts "Sorry. I'd rather swim."  
      end  
    end  
      
    p = Penguin.new  
    p.clean  
    p.fly 
#block 
def fib(max)
 i1, i2 = 1, 1
 while i1 <= max
	yield i1
	i1, i2 = i2, i1+i2
 end
end
fib(1000) {|f| print f, " "}

puts
square = "some shape"
sum=0
[1,2,3,4].each do |value; square|
square = value*value
sum += square
end
puts sum
puts square


#module example

module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end
    

class Decade
include Week
   no_of_yrs=10
   def no_of_months
      puts Week::FIRST_DAY
      number=10*12
      puts number
   end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
