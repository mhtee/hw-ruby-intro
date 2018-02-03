# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr_size = arr.length
  sum = 0
  return 0 if arr_size.zero?
  arr.each do |i|
    sum += i
  end
  return sum if arr_size > 0
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr_size = arr.length
  return 0 if arr_size.zero?
  return arr[0] if arr_size == 1
  max = arr[0..1].max
  min_max = arr[0..1].min
  arr[2..arr_size].each do |i|
    if i >= max
      min_max = max
      max = i
    elsif i > min_max && i < max
      min_max = i
    end
  end
  sum = max + min_max
  return sum if arr_size > 1
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  temp = arr.combination(2).find { |x, y| x + y == n }
  return false if temp.nil?
  return true
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  arr = ['a', 'e', 'i', 'o', 'u']
  s.downcase!
  if s.empty?
    return false
  else
    return true if !arr.include?(s[0]) && s[0].match(/[a-z]/)
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  else
    return s.match("^[10]*00$")
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new("ISBN cannot be empty")
    elsif price <= 0
      raise ArgumentError.new("Price cannot be 0 or negative")
    end
    @isbn = isbn
    @price = price.to_f
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
