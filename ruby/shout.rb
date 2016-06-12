# Release 1 - Write a Simple Module

=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(more_words)
		more_words + "!!!" + " :)"
	end

end

p Shout.yelling_happily('Yay')
p Shout.yell_angrily('Nice going')

=end

# Release 3: Convert a Standalone Module to a Mixin


module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(more_words)
		more_words + "!!!" + " :)"
	end

end

class Conductor
	include Shout
end

class Flight_attendant
	include Shout
end

# Test code
thomas = Conductor.new
p thomas.yelling_happily('All aboard')

cindy = Flight_attendant.new
p cindy.yell_angrily('The cabin door is closed, switch all portable electronics to off or airplane mode')


