require "colorize"

BEGIN {
	print "Welcome to Your Flash Card Review\n"
	} 


	def symbols
		symbols = { 
		"alias" => "duplicate method name for a given method. The original method continues to be accessible", 
		"and" => "puts Hello and Goodbye
			the subexpression puts Hello is executed first, and returns nil. The whole expression thus reduces to:
			nil and Goodbye",
		"begin" => "Together with end, delimits what is commonly called a ____ block (to distinguish it from the Proc type of code block). A _____ block allows the use of while and until in modifier position with multi-line statements:", 
		"break" => "Causes unconditional termination of a code block or while or until block, with control transfered to the line after the block. If given an argument, returns that argument as the value of the terminated block.",
		"case" => "consists of an optional condition, which is in the position of an argument to ___, and zero or more when clauses. The first when clause to match the condition (or to evaluate to Boolean truth, if the condition is null) wins, and its code stanza is executed. The value of the case statement is the value of the successful when clause, or nil if there is no such clause.
					A ____ statement can end with an else clause. Each when statement can have multiple candidate values, separated by commas.",
		"class" => "Takes either a constant name or an expression of the form << object. In the latter case, opens a definition block for the singleton class of object.
					____ may be opened more than once, and methods and constants added during those subsequent openings. ____ blocks have their own local scope; local variables in scope already are not visible inside the block, and variables created inside the block do not survive the block.",
		"def" => "Paired with a terminating end, constitutes a method definition. Starts a new local scope; local variables in existence when the ___ block is entered are not in scope in the block, and local variables created in the block do not survive beyond the block.",
		"defined?" => "expression tests whether or not expression refers to anything recognizable (literal object, local variable that has been initialized, method name visible from the current scope, etc.). The return value is nil if the expression cannot be resolved. Otherwise, the return value provides information about the expression.",
		"do" => "Paired with end, can delimit a code block:
			array.each ___ |element|	
			puts element * 10
			end
			In this context, ____/end is equivalent to curly braces, except that curly braces have higher precedence. In this example:",
		"else"  => "The ____ keyword denotes a final conditional branch. It appears in connection with if, unless, and case, and rescue. (In the case of rescue, the else branch is executed if no exception is raised.) The else clause is always the last branch in the entire statement, except in the case of rescue where it can be followed by an ensure clause.",
		"elsif" => "Introduces a branch in a conditional (if or unless) statement. Such a statement can contain any number of elsif branches, including zero",
		"END" => "Designates, via code block, code to be executed just prior to program termination.",
		"end" => "Marks the end of a while, until, begin, if, def, class, or other keyword-based, block-based construct.",
		"ensure" => "Marks the final, optional clause of a begin/end block, generally in cases where the block also contains a rescue clause. The code in the _______ clause is guaranteed to be executed, whether control flows to the rescue block or not.",
		"false" => "alse denotes a special object, the sole instance of FalseClass. false and nil are the only objects that evaluate to Boolean falsehood in Ruby (informally, that cause an if condition to fail.)",
		"for" => "A loop constructor, used with in",
		"if" => "Rubys basic conditional statement constructor. ____ evaluates its argument and branches on the result. Additional branches can be added to an ___ statement with else and elsif.",
		"in" => "used in for ie: for x __ do ...",
		"module" => "Takes a constant (the name of the _____) as its argument. The definition block starts a new local scope; existing variables are not visible inside the block, and local variables created in the block do not survive the end of the block. Inside the _______ definition, self is set to the _____ object itself.",
		"next" => "Bumps an iterator, or a while or until block,to the next iteration, unconditionally and without executing whatever may remain of the block.",
		"nil" => "A special non-object. ____ is, in fact, an object (the sole instance of NilClass), but connotes absence and indeterminacy. ____ and false are the only two objects in Ruby that have Boolean falsehood (informally, that cause an if condition to fail).",
		"not" => "Boolean negation. similar to !",
		"or" => "puts Hi or Bye is interpreted as (puts Hi) or Bye. Since puts Hi reduces to nil, the whole expression reduces to nil or Bye which evaluates to Bye. (The side-effect printing of Hi does take place.)",
		"redo" => "Causes unconditional re-execution of a code block, with the same parameter bindings as the current execution.",
		"rescue" => "Designates an exception-handling clause. Can occur either inside a begin<code>/<code>end block, inside a method definition (which implies begin), or in modifier position (at the end of a statement).",
		"retry" => "Inside a _____ clause, ____ causes Ruby to return to the top of the enclosing code (the begin keyword, or top of method or block) and try executing the code again",
		"require" => "use a file in the ruby load path",
		"require_relative" => "use a file in the same directory",
		"return" => "Inside a method definition, executes the ensure clause, if present, and then returns control to the context of the method call. Takes an optional argument (defaulting to nil), which serves as the return value of the method. Multiple values in argument position will be returned in an array",
		"self" => "____ is the current object and the default receiver of messages (method calls) for which no explicit receiver is specified. Which object plays the role of self depends on the context.",
		"super" => "Called from a method, searches along the method lookup path (the classes and modules available to the current object) for the next method of the same name as the one being executed. Such method, if present, may be defined in the superclass of the objects class, but may also be defined in the superclasss superclass or any class on the upward path, as well as any module mixed in to any of those classes.",
		"then" => "Optional component of conditional statements (if, unless, when). Never mandatory, but allows for one-line conditionals without semi-colons. The following two statements are equivalent",
		"true" => "The sole instance of the special class TrueClass. true encapsulates Boolean truth; however, <emph>all</emph> objects in Ruby are true in the Boolean sense (informally, they cause an if test to succeed), with the exceptions of false and nil.",
		"undef" => "____ a given method, for the class or module in which its called. If the method is defined higher up in the lookup path (such as by a superclass), it can still be called by instances classes higher up.",
		"unless" => "The negative equivalent of if.",
		"until" => "The inverse of while: executes code until a given condition is true, i.e., while it is not true. The semantics are the same as those of while; see while.",
		"when" => "used in with \"case\"",
		"while" => " takes a condition argument, and executes the code that follows (up to a matching end delimiter) _____ the condition is true.",
		"yield" => "Called from inside a method body, _____ control to the code block (if any) supplied as part of the method call. If no code block has been supplied, calling ____ raises an exception.
					_____ can take an argument; any values thus _____ed are bound to the block's parameters. The value of a call to _____ is the value of the executed code block."
			}

	end
	




@@nameis = ""
	def prompt ()
		print "> "
	end


	def name
		print "What's your name?\n"
			prompt; @@nameis = gets.chomp
			print "\tNow we will begin\n\tA definition will be given\n\tYou need to answer with the correct keyword\n".upcase.yellow
			rando()
	end

	def rando
		#if randy?
		#	random = randy
		#	random2 = randy2
		#	rando()
		#else
		random = []
		random2 = []
		symbols# = { "alias" => "#{alias_ans}", "and" => "&&", "begin" => "begin and rescue", "break" => "break is line break" }
			rando = symbols.sort_by {rand}
			rando = rando.each { |k,v|  random << k and random2 << v}
				print "\n#{random2[0]}\n".upcase
			prompt;	answer = gets.chomp
			if answer == "#{random[0]}"
				#randy = random[0].pop
				#randy2 = random2[0].pop
				print "you did it\n".green
				sleep 2
				rando()
			elsif answer == "exit"
				exit()
			else
				print "nope try again\n".red
				prompt; answer = gets.chomp
				if answer == "#{random[0]}"
					print "good job\n".green
					sleep 2 
					rando()
				elsif answer == "exit"
					exit()
				else
					print "Better Luck Next Time\nThe answer was #{random[0]}\n".red
					print "Try another one and maybe you will get this one next time\n".red
					rando()
			end
			end
	end

	def exit()
		print ("Thanks For Learning with us ".upcase + @@nameis.upcase + "\n").blue
	end


def start()
	print "Ready?\n"
	prompt; answer = gets.chomp.downcase
	if answer == "yes"
		name()
	else
		print "dummy"
	end

end


	


=begin
#Data Types
#For data types, write out what makes up each one. For example, with strings write out how you create a string. For numbers write out a few numbers.

true
false
nil
constants
strings
numbers
ranges
arrays
hashes

#String Escapes Sequences For string escape sequences, use them in strings to make sure they do what you think they do.

\\
\'
\"
\a
\b
\f
\n
\r
\t
\v
 #Operators Some of these may be unfamiliar to you, but look them up anyway. Find out what they do, and if you still can't figure it out, save it for later.

::
[]
**
-(unary)
+(unary)
!
~
*
/
%
+
-
<<
>>
&
|
>
>=
<
<=
<=>
==
===
!=
=~
!~
&&
||
..
...
=end
require_relative 'modules'
	Modulesss.apples()
	puts Modulesss::TANG
	

start()