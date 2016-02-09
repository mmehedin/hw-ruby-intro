# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  my_sum=0
  arr.each do |x|
    my_sum+=x
  end
  if arr.length==0
    return 0
  else
    my_sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length==1
    return arr[0]
  else
    #do nothing
     if arr[0]>=arr[1]
    large =[arr[0], arr[1]]
  else
    large =[arr[1], arr[0]]
  end

  changed = false
   for x in 2..arr.length-1
   changed= false

      if arr[x]>=large[0] && !changed 
        large[1] = large[0]
        large[0] = arr[x]
        changed = true
      
      elsif arr[x]<large[0] && arr[x]>large[1]
        large[1] = arr[x]
        changed = true
      end
  end
  puts large[0], large [1]
  large[0] + large[1]
  
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.length == 0) && (n!=0)
    return false
  elsif (arr.length == 0) && (n==0)
    return true
  end
  
  for i in 0..arr.length-1
    for j in 0..arr.length-1
        if arr[i]+arr[j]==n && i!=j
          return true
        end
    end
  end
  false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  expr = 'aeiouAEIOU#0-9\s\?\/\:\!\,\+\-\)\(\=\@\.\#\_\-'
  case s.to_s
  #when (((/\b[^aoiue]/) || (/\b[^AOIUE]/)) && (/\b[a-zA-Z]/) && (/\b^#/)&& (/\b[^0-9]/))
  #when /^([^aeiouAEIOU#0-9\s\?\/\:\!\,\+\-\)\(\=\@\.\#\_\-])/
  when /^([^#{expr}])/
    true 
  #when !/\b[^AOIUE]/
   # true
  #when (/\s/ || /\S/ || /\t/ || /\n/ || /\r/ )
   #false
  else
    false
  end
=begin
  if s=~/^[aoiue]/ || s=~/^[AOIUE]/
    true
  else 
    false
  end
=end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.to_s=~/[^01]+/) # || s.to_s=~/\b0\b/
    return false
  elsif (s.to_s=~/00\b/) || s.to_s=~/\b0\b/
    return true
  else
    false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize (isbn=nil, price=0)
#=begin
  raise ArgumentError.new "Only integer and float prices are allowed" unless ((price.is_a? Float) || (price.is_a? Integer))

  raise ArgumentError.new("Only positive prices or non zero are allowed")  unless price >0
  raise ArgumentError.new("Only strings ISBN allowed") unless isbn.is_a? String
  #raise ArgumentError.new("Only strings ISBN allowed") unless ((isbn!='') || (isbn!="") || (isbn!=nil))
  raise ArgumentError.new("Only strings ISBN allowed") unless !isbn.empty?
#=end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    raise ArgumentError.new "Only integer prices are allowed" unless new_price.is_a? Float
   raise ArgumentError.new("Only positive prices or non zero are allowed")  unless new_price >0
    @price=new_price
  end
  
  def price_as_string
    "$%.2f" % @price
  end

  def isbn=(new_isbn)
    raise ArgumentError.new("Only strings ISBN allowed") unless new_isbn.is_a?(String)
  raise ArgumentError.new("Only strings ISBN allowed") unless new_isbn!="" || new_isbn!=nil
    @isbn=new_isbn
  end
  
end
#=begin
puts hello("Jennifer")
puts sum([0,1,2,3])
puts sum([])
puts "----------------"
puts max_2_sum [0,1,2,3]
puts max_2_sum []
puts max_2_sum [2]
puts max_2_sum [3,2,0]
puts max_2_sum [3,2,4]


puts "----------------"
puts sum_to_n? [1,2,3], 5
puts sum_to_n? [1,2,3], 7
puts sum_to_n? [3,2,0], 5
puts sum_to_n? [3,2,0], 7
puts sum_to_n? [], 5
#puts sum_to_n? []
puts "----------------"
puts starts_with_consonant? "Jennifer"

puts starts_with_consonant? 123
puts starts_with_consonant? "a"
puts starts_with_consonant? "vorft"
puts starts_with_consonant? "#foo"
puts starts_with_consonant? "Iorft"

puts "----------------"
puts binary_multiple_of_4? 100100
puts binary_multiple_of_4? "0"
puts binary_multiple_of_4? 100101
puts binary_multiple_of_4? "sdfdas"
puts "----------------"
#=end
puts "----------------"
puts BookInStock.new("2", 20).price_as_string
#BookInStock.new("2", 0)
puts "----------------"
puts "----------------"