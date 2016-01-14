print ("Enter any number again: ")
first_number = gets().to_i
final_number = first_number
final_number += 5
final_number *= 2
final_number -= 4
final_number /= 2
final_number -= first_number
puts ("It will always be #{final_number}!")

#Refactoring to make it 3 lines
print ("Enter any number: ")
first_number = gets().to_i
puts ('It will always be ' + (((first_number+5)*2 -4) /2 - first_number).to_s)

#Refactored to be a method
print ("Enter any number: ")

def always_three_method
	first_number = gets().to_i
	puts ('It will always be ' + (((first_number+5)*2 -4)/2 - first_number).to_s)
end

always_three_method	

#Refactored to be a method with arguments
def always_three_method(number)
	(((number+5)*2 -4)/2 - number)
end

print ("Enter any number: ")

first_number = gets().to_i

puts "It will always be " + always_three_method(first_number).to_s

