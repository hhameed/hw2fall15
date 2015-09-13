# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length > 0
    arr.inject{|total, x| total + x}
  else
    0
  end
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    len = arr.length
    arr.sort!
    arr[len-2] + arr[len-1]
  end
end

def sum_to_n? arr, n
  if arr.length > 1
    arr.each_with_index do |outter, i|
      arr.each_with_index do |inner, j|
        if i != j && outter + inner == n
          return true
        end
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^[b-df-hj-np-tv-z].*$/i
end

def binary_multiple_of_4? s
  s.gsub(/0/,'').gsub(/1/,'').length == 0 && s =~ /.*00$/ || s == "0"
end

# Part 3

class BookInStock
  def initialize isbn, price
    raise ArgumentError, "Invalid isbn" if isbn.length==0
    raise ArgumentError, "Invalid price" if price<=0.0
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn= isbn
    @isbn = isbn
  end
  def price
    @price
  end
  def price= price
    @price = price
  end
  def price_as_string
    sprintf "$%.2f", price
  end
end
