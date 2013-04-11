class Book

	def initialize(title=" ")
		@title = title
	end

	def title=(title)
	@title = title.capitalize
	end

	def title
		@title #%w is a way to write an array without having to use commas and quotes
		no = %w{of etc and by the for on in is at to but nor or a via an}
		@title = @title.gsub(/\b[a-z]+/){ |word| no.include?(word) ? word : word.capitalize }

	end

	
end