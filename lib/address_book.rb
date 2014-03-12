class Contact

  @@all_contacts = []

  def initialize(name)
    @addresses = []
    @name = name
  end

  def set_name(name)
    @name = name
  end

  def name
    @name
  end

  def Contact.all
    @@all_contacts
  end

  def Contact.create(name)
    new_contact = Contact.new(name)
    new_contact.save
    new_contact
  end

  def save
    @@all_contacts << self
  end

  def add_address(new_address)
    @addresses << new_address
  end

  def addresses
    @addresses
  end

  def Contact.clear
    @@all_contacts = []
  end
end

class Address

  @@addresses = []

  def initialize(street, city, state)
    @street = street
    @city = city
    @state = state
  end

  # Make tests
  # def full_address
  #   @street + @city + @state
  # end

  # def save(new_address)
  #   new_address = Address.new
  #   @@addresses << new_address
  # end

end
