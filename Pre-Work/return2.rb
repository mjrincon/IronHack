def add(a, b)
	return a + a
	return a + b
	return b + b
end

puts add(1, 3)

def add(a, b)
	calc1 = a + a
	calc2 = a + b
	calc3 = b + b
	return calc1, calc2, calc3
end

puts add(2,4)

def square(num)
  sqr_num = num * num
  if sqr_num > 100
    return "Number too big!!"
  end

end