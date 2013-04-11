	require "time"

def measure(x=0)
start = Time.now
elapsed_time = Time.now - start

if block_given? 
	total = x
	if x > 0 
	x.times do 
	yield
	elapsed_time = Time.now - start
	
end
average = elapsed_time / total
else
	yield 
	elapsed_time = Time.now - start
end
else

elapsed_time = Time.now - start
end
end