# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]

# answer => arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# answer = arr2[-1] = 4

hsh1 = {first: [1, 2, [3]]}

# answer => hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# answer => hsh2[["a"]][:a][2] = 4