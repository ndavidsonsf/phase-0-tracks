=begin
Release0 - Design a Class
	- at least three attributes(using at least two data types) whose values will vary from instance to instance
	- at least three methods, at least one of which takes an argument

Pseudocode

	Class declaration - aircraft

		initialize method
			- aircraft type
			- time in service
			- home base

		take-off method
			aircraft type takes off

		landing method
			aircraft type lands

		maintenance method
			conditional to test time in service
			prints aircraft type with x time in service needs maintenance

		delayed departure method
			takes in time of delay
			prints aircraft type is delayed amount of time

	Test code


=end

class Aircraft
	
	attr_accessor :type, :years_in_service, :home_base

	def initialize(type, years_in_service, home_base)
		@type = type
		@years_in_service = years_in_service
		@home_base = home_base
	end

	def take_off
		puts "The #{@type} has taken off!"
	end

	def landing
		puts "The #{@type} has landed at its home base of #{@home_base}."
	end

	def maintenance_required
		if @years_in_service >= 20
			puts "The #{@type} has been in service for #{@years_in_service} years and is grounded for required maintenance."
		else
			puts "The #{@type} has only been in service for #{@years_in_service} years and is not in need of maintenance."
		end
	end

	def delayed_departure(hours)
		if hours == 0
			puts "The flight on the #{@type} is scheduled to depart on time."
		elsif hours == 1
			puts "TheThe flight on the #{@type} has been delayed #{hours} hour."
		else
			puts "The flight on the #{@type} has been delayed #{hours} hours."
		end
	end
end


united = Aircraft.new('Boeing 737', 16, 'SFO')
united.take_off
united.landing
united.maintenance_required
united.years_in_service = 34
united.maintenance_required
united.delayed_departure(0)
united.type = 'Boeing 787-9 Dreamliner'
united.take_off
united.delayed_departure(1)
united.delayed_departure(6)







