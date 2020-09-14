# Single line comments

print "Enter a value "

# variables start with lowercase letters or underscore

first_nums = gets.to_i

# Arithmetic operations

puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 * 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s


# in Ruby everything is an object
puts 1.class
puts 1.234.class
puts "a string".class


# Files
# write
write_handler = File.new("yourSum.text", "w")
write_handler.puts("random text").to_s
write_handler.close
# read
data_from_file = File.read("yourSum.text")
puts "data from file : " + data_from_file

load "ruby-tut2.rb"

age = 12
if (age >= 5) && (age <= 6)
    puts "You're in kindergarten"
elsif (age >= 7 ) && (age <= 13)
    puts "you are in middle school"
    puts "yeah"
else 
    puts "stay home"
end

puts "5 <=> 10 = " + (5 <=> 10).to_s

unless age > 4
    puts "no school"
else
    puts "go to school"
end

print "Enter Greeting "

greeting = gets.chomp
case greeting
when "French", "french"
    puts "Bonjour"
    exit
when "Spanish", "spanish"
    puts "Hola"
    exit
else "English"
    puts "Hello"
end

puts (age >= 50) ? "Old" : "Young"

x = 1
loop do 
    x += 1
    next unless (x % 2) == 0
    puts x
    break if x >= 10
end


# arrays
numbers = [1, 2, 3, 4, 5]
for number in numbers
    puts number
end

groceries = ["bananas", "pasta", "sweet potatoes"]
groceries.each do |food|
    puts "Get some #{food}"
end

# ranges 
(0..5).each do |i|
    puts "# #{i}"
end

def add_nums(num1, num2)
    return num1.to_i + num2.to_i
end
puts(add_nums(5, 13))


print "Enter a number : "
fnum = gets.to_i
print "Enter another number : "
snum = gets.to_i

begin
    answer = fnum / snum
rescue 
    puts "you can't divide by zero"
    exit
end

puts "#{fnum}/#{snum} = #{answer}"

def check_age(age)
    raise ArgumentError, "Enter a positive number" unless age > 0
end

begin
    check_age(-1)
rescue
    puts "impossible age"
end

# strings
multiline_string = <<EOM
This is a very 
long string  #{4 + 5} \n\n
EOM
puts multiline_string 