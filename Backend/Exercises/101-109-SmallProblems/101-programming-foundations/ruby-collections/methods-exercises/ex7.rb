# What is the block's return value in the following code? How is it determined?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# answer => true
# return value is determined by the last expression in the block. Since num.odd? is the last expression
# in the block and it can only return a boolean value, it returns true since the any? method looks
# for expressions that evaluate to true.