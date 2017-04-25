# How does take work? Is it destructive? How can we find out?
arr = [1, 2, 3, 4, 5]
arr.take(2)

# answer => take works by taking the number of elements passed into the method. In this example, arr.take(2)
# will return a new array of [1, 2] which takes the first two number of the original array. It is not a destructive
# method and in order to find out we can run it in irb and/or check Ruby docs.