# Function that receives two sequences: A and B of integers and returns one sequence C.
# Sequence C should contain all elements from sequence A (maintaining the order) except those,
# that are present in sequence B p times, where p is a prime number.

A = [2,3,9,2,5,1,3,7,10]
B = [2,1,3,4,3,10,6,6,1,7,10,10,10]
C = []
occurance = 0

def primality(number)
  unless number == 1
    for divider in 2..(number - 1)
     if (number % divider) == 0
      return false
     end
    end
    true
  else
    false
  end
end

A.each do |number_A|
  # check if number from A is in B
  unless B.include?(number_A)
    # if not: push to C
    C << number_A
  else
    # if yes
    # how many times it's present
    occurance = B.count(number_A)
    unless primality(occurance)
      # p times no: push to C
      C << number_A
    else
      # p times yes: next
      next
    end
  end
end

puts "C = [#{C.join(',')}]"
