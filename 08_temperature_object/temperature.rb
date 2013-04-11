class Temperature
	attr_accessor :f, :c

	def initialize options
		@degrees = options[:f]
		@degroos = options[:c]
	end
	def self.c(x)
		new@degroos = {:c => x}
	end
	def self.f(x)
		new@degrees = {:f => x}
	end
	def in_fahrenheit
		if @degrees
		@degrees 
	else
		@degroos = (@degroos * (9.0/5.0) + 32)
	end
	end
	def in_celsius
		if @degrees
		@degrees =  (@degrees - 32) * (5.0/9.0)
	else
		@degroos
	end
end
end
class Celsius < Temperature
	def initialize(y)
		super(:c => y)
end
end

class Fahrenheit < Temperature
	def initialize(y)
		super(:f => y)
	end
end
