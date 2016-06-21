class Person
  # This method creates the getters automatically
  # attr_reader :height, :hair_colour, :top_colour, :name

  # This method creates the setters automatically
  # attr_writer :height, :hair_colour, :top_colour, :name

  # This method combines the above two (creates setters and getters)
  attr_accessor :name, :height, :hair_colour, :top_colour

  def initialize(name = nil, height = 0.0, hair_colour = nil, top_colour = nil)
    # The @ means that it is an instance variable
    @name = name
    @height = height
    @hair_colour = hair_colour
    @top_colour = top_colour
  end

  # Setters
  # def height=(new_height)
  #   @height = new_height
  # end
  #
  # def hair_colour=(new_hair_colour)
  #   @hair_colour = new_hair_colour
  # end
  #
  # def top_colour=(new_top_colour)
  #   @top_colour = new_top_colour
  # end
  #
  # def name=(new_name)
  #   @name = new_name
  # end

  # ---------------------------------------------

  # Getters
  # def height
  #   # Methods return the last line that was executed so return is not needed
  #   @height
  # end
  #
  # def hair_colour
  #   @hair_colour
  # end
  #
  # def top_colour
  #   @top_colour
  # end
  #
  # def name
  #   @name
  # end

  # ---------------------------------------------

  # Instance methods
  def dance
    return "I'm dancing"
  end

  def sleep
    return "Zzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  end

  def describe
    return "Hi, I'm #{@name}. I am #{@height} cm tall, my hair colour is #{@hair_colour} and my top colour is #{@top_colour}"
  end
end

# Inheritance

class Baby < Person

  def initialize(name = nil, height = 0.0, hair_colour = nil, top_colour = nil, smells = true)
    @smells = smells
    # Does the stuff in the super class
    super name, height, hair_colour, top_colour
  end

  def cry
    "Wah."
  end

  def dance
    # raise makes a runtime error
    raise "Babies don't dance"
  end
end
