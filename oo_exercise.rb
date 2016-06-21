class Person
  # This method creates the getters automatically
  # attr_reader :height, :hair_colour, :top_colour, :name

  # This method creates the setters automatically
  # attr_writer :height, :hair_colour, :top_colour, :name

  # This method combines the above two (creates setters and getters)
  attr_accessor :name, :height, :hair_colour, :top_colour

  def initialize(first_name, surname, dob = nil)
    # The @ means that it is an instance variable
    @dob = dob # This should be a Date object
    @first_name = first_name
    @surname = surname
    @fullname = "#{first_name} #{surname}"
  end
end
