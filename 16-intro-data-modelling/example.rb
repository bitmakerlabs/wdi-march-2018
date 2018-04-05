

me = Contact.find_by(first_name: "Natalie")

Contact.all.each do |contact|
  Note.create(contact_id: contact.id, body: "everyone gets this note")
end



john = Contact.find_by(first_name: "John")
notes_about_john = Note.where(contact_id: john.id)