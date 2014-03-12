require 'rspec'
require 'address_book'

describe Contact do
  before do
    Contact.clear
  end

  describe '.all' do
    it 'is empty at first' do
      Contact.all.should eq []
    end
  end

  describe '.create' do
    it 'makes a new instance of Contact' do
      test_contact = Contact.create('John Doe')
      test_contact.should be_an_instance_of Contact
    end

    it 'saves the Contact' do
      test_contact = Contact.create('John Doe')
      Contact.all.should eq [test_contact]
    end
  end

  describe '#save' do
    it 'adds a contact to the array of contacts' do
      test_contact = Contact.new('Jane Doe')
      test_contact.save
      Contact.all.should eq [test_contact]
    end
  end

  describe '#add_address' do
    it 'adds an address to a contact record' do
    test_contact = Contact.create("Jane Doe")
    test_address = Address.new("456 Elm St", "Portland", "OR")
    test_contact.add_address(test_address)
    test_contact.addresses.should eq [test_address]
  end
end


  describe '.clear' do
    it 'empties out all the saved tasks' do
      Contact.new('Jane Doe')
      Contact.clear
      Contact.all.should eq []
    end
  end
end

describe Address do
  describe '#address' do
    it 'is initialized with a street, city, and state' do
      test_address = Address.new("123 Main St", "Portland", "OR")
      test_address.should be_an_instance_of Address
    end
  end
end
