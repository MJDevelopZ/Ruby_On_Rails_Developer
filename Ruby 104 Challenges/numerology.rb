def add_birthdate(birthday)
	birthday[0].to_i+birthday[1].to_i+birthday[2].to_i+birthday[3].to_i+birthday[4].to_i+birthday[5].to_i+birthday[6].to_i+birthday[7].to_i
end

#create another method to reduce the now added birthdate to a single number
def single_number(number)
	number = number.to_s
	number = number[0].to_i + number[1].to_i

	if (number > 9)
		get_number(number)
	end

	return number
end

def get_birth_path_number(birthday)
	number = add_birthdate(birthday)
	number = single_number(number)	
end

def get_path_message(birth_path_number)
	case birth_path_number
		when 1
			message =  "Your numerology number is 1. One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when 2
			message =  "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3 
			message =  "Number three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, three's enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4 
			message =  "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5 
			message =  "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of a variety and the ability to adapt to most situations. Ruled by Mercury." 
		when 6 
			message =  "This is the peace lover. The nubmer six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7 
			message =  "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8 
			message =  "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9 
			message =  "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."	
		else
			message =  "You seem to be an anomoly and I am not sure if that is a good thing..."
		end
end

#Ask user for their birthdate
print "What is your birthdate? Please enter as MMDDYYYY: "
birthday = gets()

#pass the birthday to the first method
birth_path_number = get_birth_path_number(birthday)

#pass the birth_path_number to second method
message = get_path_message(birth_path_number)

#print the number and corresponding message
print message