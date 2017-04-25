# Using the hash you created from the previous exercise (12),
# demonstrate how you would access Joe's email and Sally's phone number?

hash = {
  "Joe Smith"=> {
    :email=>"joe@email.com",
    :address=>"123 Main st.",
    :telephone=>"555-123-4567"
  },
  "Sally Johnson"=> {
    :email=>"sally@email.com",
    :address=>"404 Not Found Dr.",
    :telephone=>"123-234-3454"
  }
}

p hash["Joe Smith"][:email]
p hash["Sally Johnson"][:telephone]
