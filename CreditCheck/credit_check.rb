# card = "4929735477250543"       #valid
# card = "4833140010320124"         #valid
# card = "5541808923795240"          #valid
# card = "5541801923795240"            #invalid
card = "5541808923795240"            #valid
# p card

digits = card.chars
# p digits

double = digits.map.with_index do |digit, index|
  if index % 2 == 0
    digit.to_i * 2
  else
    digit.to_i
  end
end
# p double

summed = double.map do |digit|
  if digit > 9
   digit - 9
  else digit < 9
  digit
  end
end

# p summed

check_digit = summed.reduce(:+)
# p check_digit

if check_digit % 10 == 0
  puts "This credit card number is valid"
else
  puts "This credit card number is invalid"
end
