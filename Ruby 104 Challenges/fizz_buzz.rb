i=1

while (i<101)
	#if the number is a multiple of both 3 and 5, print "FizzBuzz"
	if (((i%3)==0) && ((i%5)==0))
		puts "FizzBuzz"
	#if the number is a multiple of 5, print "Buzz"
	elsif ((i%5)== 0)
		puts "Buzz"
	#if the number is a multiple of 3, print "Fizz"
	elsif ((i % 3) == 0)
		puts "Fizz"
	else
		puts i
	end
		
	i +=1
end