
def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(x=[])
sum = 0
x.each { |boo| sum +=boo }
sum.to_i
end

def multiply(x=[])

x[0] * x[1]
end

def power(x,y)
	x ** y

end

def factorial(x)
	y = x-1
	while(y > 0)
	total = x * y
		y = y-1 
	#total = total * y
#		y = y-1
	end
total
end