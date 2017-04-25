# define a method
 # IN => array of strings
 # OUT => an array of the same string values, but with vowels removed.

def remove_vowels(arr)
  vowels = 'aeiouAEIOU'
  vowels_removed = []
  arr.map do |string|
    vowels_removed <<   string.delete(vowels)
  end
  vowels_removed
end

# or another way to accomplish this with less code

def remove_vowels(array)
  array.map { |word| word.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

