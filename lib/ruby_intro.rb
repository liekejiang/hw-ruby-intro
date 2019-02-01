# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr_sum = 0
  return arr_sum if arr.length == 0
  
  arr.each do |i|
    arr_sum += i
  end
  return arr_sum
end


def max_2_sum arr
  # YOUR CODE HERE
  
  max_1 = 0
  max_2 = nil
  
  arr_sort = arr.sort
  
  max_1 = arr_sort[-1] if arr_sort[-1] != nil
  max_2 = arr_sort[-2] if arr_sort[-2] != nil
  
  if max_2 == nil
    return max_1
  else
    return max_1+max_2
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  return false if arr.length == 0
  return false if n.integer? == false
  
  arr_sort = arr.sort
  start_pos = 0
  final_pos = (arr_sort.length - 1) 
  end_flag = false
  
  while (end_flag == false)
  
    if start_pos == final_pos
      return false
    end
    
    if arr_sort[start_pos] + arr_sort[final_pos] > n
      final_pos -= 1
    elsif arr_sort[start_pos] + arr_sort[final_pos] < n
      start_pos += 1
    else
      return true
    end
    
  end
      
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if (s.match /\A[^aeiou]/i ) && (s.match /\A[a-zA-z]/i)
    return true 
  end
    
  return false
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.length == 0
  
  if (s.match /\A\d*\z/)
    if (s.match /[2-9]/)
      return false
    else
      s_decimal = s.to_i(2)
      
      if s_decimal % 4 == 0
        return true
      else
        false
      end
      
    end
  else
    return false
  end
  
end


# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    begin
    
      raise ArgumentError if isbn == ""
      raise ArgumentError if price <= 0

      @isbn = isbn
      @price = price
      
    end
  end
  

  def price_as_string
      @price_string = format("%.2f",@price).to_s
      return "$" + @price_string
  end
end

