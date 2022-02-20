# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for num in arr
    total += num
  end 
  return total
end

def max_2_sum arr
  if arr.length < 2
    if arr.length < 1
      return 0
    end
    return arr[0]
  end
  max_1 = arr.max
  arr.delete_at(arr.index max_1)
  max_2 = arr.max
  return max_1 + max_2
end

def sum_to_n? arr, n
  for num_1 in arr
    for num_2 in arr
      if (arr.index num_1) != (arr.index num_2) and (num_1 + num_2 == n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length > 0
    return s.match(/\A[aeiouAEIOU]/) ? false : (s.match(/\A[a-zA-Z]/) ? true : false)
  end
  return false
end

def binary_multiple_of_4? s
  if s.length > 0 and !s.match(/[^01]/)
    return s.to_i(2) % 4 == 0
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length < 1 or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string 
    return "$%.2f" % price
  end

end
