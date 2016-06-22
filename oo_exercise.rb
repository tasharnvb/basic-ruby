class Person
  require "date"

  attr_accessor :first_name, :surname, :dob, :fullname
  attr_reader :emails, :phone_numbers

  def initialize(first_name, surname, dob = Date.today.to_s)
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @dob = Date.parse dob

    @fullname = "#{@first_name} #{@surname}" # Danny had this as a method instead

    @emails = []
    @phone_numbers = []
  end

  # --------------------------------------------------
  # Add to arrays
  def add_to_list(list, item)
    list << item
  end

  def add_email(new_email)
    add_to_list @emails, new_email
  end

  def add_phone(new_email)
    add_to_list @phone_numbers, new_email
  end

  # --------------------------------------------------
  # Remove from arrays
  def remove_from_list(list, position)
    list.delete_at position
  end

  def remove_email(position)
    remove_from_list @emails, position
  end

  def remove_phone(position)
    remove_from_list @phone_numbers, position
  end

  def to_s
    puts "#{fullname} was born on #{dob}.\nTheir email addresses are: #{emails}.\nTheir phone numbers are: #{phone_numbers}"
  end

  def print_details
    puts @fullname
    puts "----------" # Danny did: puts "-" * fullname.length
    puts "Date of Birth: #{dob.strftime '%d %B %Y'}"

    puts "\nEmail Addresses:"
    @emails.each { |email| puts "- #{email}" }

    puts "\nPhone Numbers:"
    @phone_numbers.each { |p_number| puts "- #{p_number}" }
    # Danny put: return nil
  end
end

class FamilyMember < Person
  attr_accessor :relationship

  # Danny put relationship first and then used *args (Just like Java)
  def initialize(first_name, surname, relationship = nil, dob = "22/06/2016")
      @relationship = relationship
      super first_name, surname, dob
  end
end

class AddressBook
  def initialize
    @address_book = []
  end

  def add(person)
    # Adapted from http://stackoverflow.com/a/826227
    # The brackets are to stop the warning that happens when loading the file
    # Danny did: person.is_a? Person
    if person.class.name == ("Person" || "FamilyMember")
      @address_book << person
    else
      raise "Only Person and FamilyMember objects are allowed as parameters"
    end
  end

  def list
    puts "Address Book"
    puts "------------"

    @address_book.each_with_index do |person, index|
      puts "Entry #{index + 1}: #{person.fullname}"
    end
  end
end
