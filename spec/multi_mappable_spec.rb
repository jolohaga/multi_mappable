require 'spec_helper'

describe MultiMappable do
  let(:name) { "Zot" }
  let(:address) { "UCI" }
  let(:obj) { Contact.new(people: [Person.new(name: name, address: address)]) }
  
  subject { obj.to_s.split.join }
  it "converts attributes to XML" do
    expect(subject).to eq(%{<contact><person><name>#{name}</name><address>#{address}</address></person></contact>})
  end
end

class Person
  include MultiMappable
  
  element name: :name, type: String
  element name: :address, type: String
end

class Contact
  include MultiMappable
  
  element name: :people, type: Array[Person], opts: { as: [Person] }
end