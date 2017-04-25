# write a method
# IN -> String
# DO -> capitalize every other character in the string but ignore non-alphabetic characters but include them in new string
# OUT -> return new string that contains same value passed in but every other character capitalized

def staggered_case(string)
  chars = string.downcase.chars
  staggered_string = ''
  upper_case = true

  chars.each do |letter|
    if upper_case == true
      staggered_string << letter.upcase
    else
     staggered_string << letter
    end

    next if letter =~ /[^a-zA-Z]/
    upper_case = !upper_case

  end

  staggered_string

end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'