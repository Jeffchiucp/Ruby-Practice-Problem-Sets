# What is the block's return value in the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# answer => [1, nil, nil]
# The reason the last two values are nil instaed of 2 & 3 is because when the if statement evaluated to true
# we use puts which always evaluates to nil. So, 1 is not greater than 1 and we return 1 but 2 and 3 are greater
# than 1 and we puts num which evalutes to nil.