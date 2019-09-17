# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  def sum(arr)
    if arr.any?
      sum = 0
      arr.each do |i|
        sum += i
      end
      return sum
    else
      return 0
    end
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  def max_2_sum(arr)
    if arr.any?
      # if the array has one element, return that element
      if arr.size == 1
        return arr[0]
      elsif arr.size == 2
        return arr[0] + arr[1]
      end
      # Look for the two greatest numbers and return their sum
      first = arr[0]
      second = arr[1]
      arr.drop(2).each do |i|
        if i > first
          second = first
          first = i
        elsif i > second
          second = i
        end
      end
      return first + second
    else
      return 0
    end
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  def sum_to_n?(arr, n)
    if arr.any?
      if arr.size == 1
        return false
      end 
      i = 0
      j = 1
      while i < arr.size - 1
        while j < arr.size
          if arr[i] + arr[j] == n
            return true
          end
          j = j + 1
        end
        i = i + 1
        j = i + 1
      end
      return false
    else
      return false
    end
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  def starts_with_consonant?(s)
    if s =~ /\A(?=[^aeiou])(?=[a-z])/i
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  def binary_multiple_of_4?(s)
    puts s
    puts s.gsub(/[01]/,'')
    if s.gsub(/[01]/,'') != ''
      return false
    else
      puts s + " is a binary number"
      if s.split(//).last(2).join == "00"
        puts s.split(//).last(2).join
        puts "Is a mutliple of 4"
        return true
      else
        puts "Is not a multiple of 4"
        return false
      end
    end
  end
end

# Part 3

class BookInStock

  #constructor
  def initialize(isbn, price)
    raise ArgumentError.new("Not valid isbn") if isbn == ''
    raise ArgumentError.new("Not valid price") if price <= 0
    @isbn = isbn
    @price = price
  end
  #getters
  def isbn
    @isbn
  end
  def price
    @price
  end 
  def price_as_string
    return '$%.2f' % @price
  end
  #setters
  def isbn=(isbn)
    raise ArgumentError.new("Not valid isbn") if isbn == ''
    @isbn = isbn
  end
  def price=(price)
    raise ArgumentError.new("Not valid price") if price <= 0
    @price = price
  end
  
end
