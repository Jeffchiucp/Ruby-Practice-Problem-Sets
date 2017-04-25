# Write a method that returns one UUID when called with no parameters.
require 'SecureRandom'

def return_uuid
  SecureRandom.uuid
end

puts return_uuid
