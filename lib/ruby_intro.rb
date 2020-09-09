#When done, submit this entire file to the autograder.
require 'set'
# Part 1

def sum arr
	total = 0
	if !arr.any?
		return 0
	else
		arr.each{|x| total+=x}
		return total
 	end
end


def max_2_sum arr
   total = 0
        if !arr.any?
                returned_value = 0
        elsif arr.count() == 1
		returned_value = arr.at(0)
	else 
		max = arr.max()
		arr.delete_at(arr.index(max))
		second_max=arr.max()
		returned_value = max+second_max;
	end	
end

def sum_to_n? arr, n
	if !arr.any?
		return false
	elsif arr.count() == 1
		return false
	else
		hash_set = Set.new
		arr.each do |number|
			if hash_set.include?(n - number)
				return true
			end
			hash_set.add(number)
		end
	return false
	end
end


# Part 2

def hello(name)
  # YOUR CODE HERE
 returned_value= "Hello, " + name
end

def starts_with_consonant? s
	if s =~ /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/
		returned_value=true
	else 	returned_value=false
	end
end

def binary_multiple_of_4? s
	count=0
	result=0
	if s == ""
		return false
	end
	if (s =~ /^[10]*$/)
	s.split("").each do |i|
		result+=(i.to_i)*(2**(s.length-count))
		count+=1
	end
	 returned_value=((result%4) == 0)
	else
		returned_value=false
	end	
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price
	def initialize(isbn, price)
		if isbn == ''
			raise ArgumentError.new("No empty string")
		end
		if price <=0.0
			raise ArgumentError.new("Value should be more than 0.0");
		end
		@isbn = isbn
		@price = price
	end
	def isbn
		@isbn
	end
	def price
		@price
	end
	def isbn=(isbn)
		@isbn = isbn
	end
	def price=(price)
		@price = price
	end
	def price_as_string
		return "$"+'%.2f' % price.to_s
	end
end
