def simon_says
end

def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x,y=2)
	("#{x} " * y).chop
end
def start_of_word(x,y)
	y = y-1 
	x[0..y]
end

def first_word(x)
	first_word = x.split
	first_word[0]
end

#def titleize(x)
	#if x.split.size >= 1 
	#words = []
	#words << x
	#words.each { |x| x.capitalize.join(" ") }
#else 
#	x.capitalize
#end

#end

def titleize(x)
		non_capitalized = %w{of etc and by the for on in is at to but nor or a via an}
      	 title = x.gsub(/\b[a-z]+/){ |w| non_capitalized.include?(w) ? w : w.capitalize  }.sub(/^[a-z]/){|l| l.upcase }.sub(/\b[a-z][^\s]*?$/){|l| l.capitalize }
	end

