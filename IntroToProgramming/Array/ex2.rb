# What will the following programs return? What is value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)  # 1


arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)  # [1..3]