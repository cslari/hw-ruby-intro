# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  @total=0
  arr.each{|x| @total += x}
  return @total
end

def max_2_sum arr
  @total = 0
  @length = arr.length
  if arr.empty? 
    return 0
  elsif @length == 1
    return arr[0] 
  else
    arr.sort!
    @total += arr.pop
    @total += arr.pop
    return @total
  end 
  
end

def sum_to_n? arr, n
  while !(arr.empty?)
    @tmp = arr.shift
    arr.each do |i|
      if((@tmp+i) == n)
        return TRUE
      end
	 end
  end
  return FALSE
end

# Part 2

def hello(name)
  return ("Hello, "+name)
end

def starts_with_consonant? s
  s.downcase!
  @letter = s[0]
  @match = /[b-df-hj-np-tv-z]/.match(@letter)
  if(@match == nil)
    return FALSE
  else
    return TRUE
  end
end

def binary_multiple_of_4? s
  @length = s.length
  @check = /[^01]/.match(s)
  if @check != nil
    return FALSE
  elsif (s == "0")
    return TRUE
  elsif @length < 3
    return FALSE
  end 
  @end = /00+\z/.match(s) 
  if @end != (nil)
    return TRUE
  else
    return FALSE
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize (isbn_, price_)
    @check = /[0-9\-]/.match(isbn_)
    if(price_<=0)
      throw ArgumentError
    elsif(@check == nil)
      throw ArgumentError
    end
    @isbn = isbn_
    @price = price_
  end

  def price_as_string 
    @sprice = (self.price).to_s
    @sprice = sprintf(@sprice)
    return @sprice
  end
end
