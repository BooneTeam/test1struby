def translate(x)
	a = []
	x.split.map do |word|
	a << if word[0] =~ (/[^a,e,i,o,u]/i)
		if word [0] =~ (/[q]/i)
			word[2..-1] + word[0..1] + "ay"
		elsif word [1] =~ (/[q]/i) 
			word[3..-1] + word[0..2] + "ay"
		elsif word[1] =~ (/[^a,e,i,o,u]/i) && word[2] =~ (/[^a,e,i,o,u]/i)
			word[3..-1] + word[0..2] + "ay"

		elsif word[1] =~ (/[a,e,i,o,u]/i)
			word[1..-1] + word[0] + "ay"
		else
			word[2..-1] + word[0..1] + "ay"
		end
	else
		word + "ay"
end
end
a.join(" ")
end
puts translate("The Quick brown fox jumped over the lazy dog!")