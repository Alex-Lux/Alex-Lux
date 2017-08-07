def calculation (calculator, first_number, second_number)
  if calculator == "+"
    result = first_number + second_number
  elsif calculator == "-"
    result = first_number - second_number
  elsif calculator == "*"
    result = first_number * second_number
  elsif calculator == "/"
    result = first_number / second_number
  else
    result = "The operation is not valid"
  end
end





