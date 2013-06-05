# Tealeaf: Intro to Ruby and Web Development (June 2013) / Nars Dichoso
# Exercise: Ruby Calculator App

puts "Hello! My name is CalcuApp."
puts "Let's learn some computation today."

def say(msg)
  puts "=>#{msg}"
end

def convert_operator_to_text(operator) 
  case operator      # When case
  when '1'
    'add'
  when '2'
    'substract'
  when '3'
    'multiply'
  when '4'
    'divide'
  end
end

say "=> And may I know your name, please?"
name = gets.chomp

say "Welcome, #{name}! Let's begin."

say "=> So what's your first favorite number?"
fav_num1 = gets.chomp

say "=> And your your next favorite number?"
fav_num2 = gets.chomp

say "=> Now, what would you like to do with your numbers? 1) add 2) substract 3) multiply 4) divide"
operator = gets.chomp

result = nil

if operator == '1'  # Should be a string, not a fixnum
  result = fav_num1.to_i + fav_num2.to_i  # Should use .to_i because num1 and num2 are integers
elsif operator == '2'
  result = fav_num1.to_i - fav_num2.to_i
elsif operator == '3'
  result = fav_num1.to_i * fav_num2.to_i
elsif operator == '4'
  result = fav_num1.to_f / fav_num2.to_f
end
  
say "You chose to #{convert_operator_to_text(operator)} #{fav_num1} and #{fav_num2}. Result: #{result}."



