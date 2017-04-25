# IN -> string
# DO -> capitalize every other character in the string
# OUT -> return new string that contains same value passed in but every other character capitalized

def staggered_case(string)
  chars = string.chars
  staggered_string = ''
  need_upper = true
  chars.each do |item|
    if need_upper == true
      staggered_string << item.upcase
    else
      staggered_string << item.downcase
    end
    need_upper = !need_upper
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'