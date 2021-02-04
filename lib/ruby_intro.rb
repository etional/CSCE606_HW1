# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    return arr.sum
  end
  
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    max_2 = arr.max(2)
    return max_2.sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length-1 do
    for j in i+1..arr.length-1 do
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, ".concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /^[^aeiou\W]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE\
  if s.length == 1
    return s == "0"
  end
  return s =~ /^[01]*00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    if isbn.length == 0
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end
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
    return "$".concat('%.2f' % @price)
  end
end
