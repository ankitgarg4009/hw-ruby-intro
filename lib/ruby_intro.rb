# When done, submit this entire file to the autograder.

# Part 1

def sum array
  len=array.length
  add=0
  if len==0
    return 0
  elsif len==1
    return array[0] 
  else
    for i in 0..len-1
      add=add+array[i]
    end
    add
  end
end

def max_2_sum arr
  len=arr.length
  if len==0
    return 0
  elsif len==1
    return arr[0]
  else
    sum(arr.sort.last(2))
  end
end

def sum_to_n? arr, n
  len=arr.length
    arr=arr.sort
    l=0
    r=len-1

    while(l<r)
      if arr[l]+arr[r]==n
        return true
      elsif arr[l] + arr[r]<n
        l=l+1
      else arr[l] + arr[r]>n
        r=r-1
      end
    end
    return false
end

# Part 2

def hello name
  "Hello, " + name
end

def starts_with_consonant? s
  (s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  s =~ /(^0|^[10]*00)$/             
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
