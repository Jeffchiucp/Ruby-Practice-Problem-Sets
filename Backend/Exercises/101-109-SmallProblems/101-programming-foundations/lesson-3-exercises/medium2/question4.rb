#A common idiom used to solve this conundrum is to use the String#split in conjunction with Array#join methods to break
# our string up and then put it back together again.
# Use this technique to break up the following string and put it back together with the words in reverse order:

sentence = "Humpty Dumpty sat on a wall."

# answer

p sentence.delete(".").split(" ").reverse.join(" ") + "."