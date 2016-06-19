# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# relative path from the file you are in (copy and pasting whatever is in the other file)
# require when you are bringing in other libraries
# 
# Release 3
# STATE DATA is a constant and global in scope
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this out break and will spread across the state #{speed_of_spread} months.\n\n"
    # predicted_deaths
    # speed_of_spread
  end

  private

  # calculates number of deaths based on population density
  # prints result with string interpolation
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density 
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    #print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # calculates the rate of disease spread in terms of months
  # prints to console
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    speed
    #puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do | state, data |
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#   The large hash uses strings as keys and the inside hash uses symbols.
# What does require_relative do? How is it different from require?
#   require relative is the relative path to data (like copy and pasting the information above what you are working on)
#   require is used for bringing in libraries and such
# What are some ways to iterate through a hash?
#   I used the .each method to iterate over the hash, there are a couple of other built-in methods that you could use but
#   they would not be the most efficient.  Like .each_pair, or .each_key, and .each_value
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   The the same variables were being called again.
# What concept did you most solidify in this challenge?
#   Accessing the hash in the hash wasn't exactly intuitive; but made sense after Jen explained it.  Also, I had not written a case statement before
#   although this was not the best case scenario to use one, it still worked.  What I did enjoy in the refactoring was recognizing that each
#   method should ONLY be doing one thing - and refactoring so the private methods were called inside a print statement fixed that.
#   I am viewing that as the biggest refactoring WIN so far in my career. hah!

