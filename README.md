# MultiMappable

Ruby gem mixing Virtus and ROXML to produce objects that can map between attributes and XML.

## Installation

Add this line to your application's Gemfile:

    gem 'multi_mappable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install multi_mappable

## Usage

````ruby
  class Person
    include MultiMappable
    
    element name: :name, type: String
    element name: :address, type: String
  end
  
  class Contact
    include MultiMappable
    
    element name: :people, type: Array[Person], opts: { as: [Person] }
  end
  
  > p = Person.new
  > p.name = "Zot"
  > p.address = "UCI"
  > c = Contact.new(people: [p])
  > c.to_s
  
  # Produces
  <contact>
    <person>
      <name>Zot</name>
      <address>UCI</address>
    </person>
  </contact>
````

## Contributing

1. Fork it ( https://github.com/ucirvine/multi_mappable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
