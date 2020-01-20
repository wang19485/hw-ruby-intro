# When done, submit this entire file to the autograder.
# gggg
# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  else arr.inject :+
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort[-2] + arr.sort[-1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
   false
  elsif arr.length == 1
    false
  else 
  i = 0
  while i < arr.length - 1
  j = i + 1
    while j < arr.length
     if arr[i] + arr[j] == n
      return true
     end
     j += 1
    end
    i += 1
  end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  str.concat(name) 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif !(s[0] =~ /[[:alpha:]]/)
    return false
  end
  arr = ['A','E','I','O','U']
  i = 0
  while i < arr.length
    if s[0].upcase == arr[i]
      return false
    else
      i+=1
    end
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  num = s.to_i(base=2)
  puts s
  puts num
  if s != '0' && num == 0
    return false
  end
  if num % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn.empty? || price.to_f <= 0
      raise ArgumentError
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
    if isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
  end
  
  def price=(price)
    if price.to_f <= 0
      raise ArgumentError
    end
    @price = price
  end
  
  def price_as_string
    str = '$'
    str.concat('%.2f' % @price)
  end
end
