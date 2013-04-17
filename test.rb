puts "hello there!! and you are "
person=gets.chomp

puts "OK #{person} let's calculate .."
puts "you know like add, substract, divide and multiple two numbers.."

def validnum?(num)
Float(num) != nil rescue false
end

def validoperation?(operation)
if operation=="A"
  return true
	elsif operation=="D"
		return true
	elsif operation=="S"
		return true
	elsif operation=="M"
		return true
	else
		return false 
end
end


def checkanum(num)
while validnum?(num) != true 
	puts "sorry not a valid number - give me a good number "
	num = gets.chomp 
end
return num
end


def operation(operation)
while validoperation?(operation) != true 
	puts "No No.. You Gave me #{operation} please give me a A S D or M for Add, Substract, Divide, Multiple"
	operation = gets.chomp 
end
return operation
end

def calculate(operation,num1,num2)
 puts "OK, Here you go, you wanted to  #{operation} this #{num1} and #{num2}"
 outputstring ="Here you go"
case operation 
when "A"
puts "#{outputstring} , the result is #{num1.to_f+num2.to_f}"
when "S"
puts "#{outputstring} , the result is #{num1.to_f-num2.to_f}"
when "M"
puts "#{outputstring} , the result is #{num1.to_f*num2.to_f}"
when "D"
puts "#{outputstring} , the result is #{num1.to_f/num2.to_f}"

end
end


puts " Now give me first number"
#
num1 = checkanum(gets.chomp)

puts " Now give me second number"

num2 = checkanum(gets.chomp)
puts "Alright,  Now say you want A for Add, S for Substract, D for Divide or M fro Multiple?"
#
operation =operation(gets.chomp)

calculate(operation, num1,num2)

