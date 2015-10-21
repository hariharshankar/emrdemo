
class Customer
#Class Variable
 @@no_of_customers=0
#local Variable(id,name,addr)
 def initialize(id,name,addr)
#instance Variable
	@cust_id=id
	@cust_name=name
	@cust_addr=addr
 	@no_of_customers=0
 end
 def display_details()
	puts "customer id #@cust_id"
	puts "customer name #@cust_name"
	puts "customer add #@cust_addr"
 end
 def total_no_customers()
  	@@no_of_customers+=1
  	@no_of_customers+=1
	puts "total cls:#@@no_of_customers"
	puts "total inst:#@no_of_customers"
 end
end

 
#create objects
cust1=Customer.new("1","jo","chennia")
cust2=Customer.new("2","do","madras")
#call methods
cust1.display_details()
cust2.display_details()
cust1.total_no_customers
cust2.total_no_customers
