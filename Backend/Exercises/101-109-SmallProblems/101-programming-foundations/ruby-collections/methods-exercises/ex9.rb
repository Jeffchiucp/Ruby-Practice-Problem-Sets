# What is the return value of map? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# answer => [nil, "bear"]
# First, map always returns an array. Second, the if condition will only evaluate to true if the length of
# value is greater than 3, in this case "bear" is the only value greater than 3. This means that the first
# value is evaluated to false and won't be returned. The reason we see nil as the first value in the array
# is because when none of the conditions in an if statement are evaluated then the if statement returns nil.
