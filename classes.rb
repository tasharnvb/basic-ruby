class Person
  def initialize
    # The @ means that it is an instance variable
    @height = 0.0
    @hair_colour = nil
    @top_colour = nil
  end

  # Setters
  def set_height(new_height)
    @height = new_height
  end

  def set_hair_colour(new_hair_colour)
    @hair_colour = new_hair_colour
  end

  def set_top_colour(new_top_colour)
    @top_colour = new_top_colour
  end

  # ---------------------------------------------

  # Getters
  def get_height
    # Methods return the last line that was executed so return is not needed
    @height
  end

  def get_hair_colour
    @hair_colour
  end

  def get_top_colour
    @top_colour
  end

  # ---------------------------------------------

  # Instance methods
  def dance
    return "I'm dancing"
  end

  def sleep
    return "Zzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  end

  def describe
    return "Hi, I am #{@height} cm tall, my hair colour is #{@hair_colour} and my top colour is #{@top_colour}"
  end
end
