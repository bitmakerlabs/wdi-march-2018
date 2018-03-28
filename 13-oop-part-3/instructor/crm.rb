require_relative 'contact.rb'

clark = Contact.new('Clark', 'Kent',   'clark@dailyplanet.com', 'Runs into the phone booth a lot')
diana = Contact.new('Diana', 'Prince', 'diana@amazon.com')

clark.save
diana.save

bruce = Contact.create('Bruce', 'Wayne',  'bruce@wayne.com', 'Dark guy...')

bruce.notes = 'Has some secrets'
diana.notes = 'Cool gal'

some_contact = Contact.find(1002)
puts some_contact.notes
