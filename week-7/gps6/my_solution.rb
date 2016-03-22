# Virus Predictor

# I worked on this challenge with Ena.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # Initalize method running at each instance created of this object.
  # Instance variables created and set to their corresponding arguments passed in.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls on two methods (predicted_deaths, speed_of_spread)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Calculating the number of deaths based on the instance variable passed in on the initalize method.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculating the speed of spread based on the instance variable passed in on the initalize method.
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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state



def state_reports
  STATE_DATA.each do |state, information|
    new_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    new_state.virus_effects
  end
end

state_reports

#=======================================================================
# Reflection Section