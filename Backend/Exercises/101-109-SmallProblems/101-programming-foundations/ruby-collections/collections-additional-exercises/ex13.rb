# Write a method that returns one UUID when called with no parameters

def create_UUID
  character = []
  (0..9).each { |digit| character << digit.to_s }
  ('a'..'f').each { |digit| character << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += character.sample }
    uuid += '-' unless index >= section.size - 1
  end

  uuid
end