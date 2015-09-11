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
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
