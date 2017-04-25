contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :telephone]

contacts.each do |name, info|
  fields.each do |field|
    info[field] = contact_data.shift
  end
end

p contacts