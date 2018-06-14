def calculator

  equations = []
  
  def calculation (array1, number1, operation, number2)
    if operation == "+"
      sum = number1 + number2
      equation = "#{number1.to_s} + #{number2.to_s} = #{sum}"
    elsif operation == "-"
      sum = number1 - number2
      equation = "#{number1.to_s} - #{number2.to_s} = #{sum}"
    elsif operation == "*"
      sum = number1 * number2
      equation = "#{number1.to_s} * #{number2.to_s} = #{sum}"
    elsif operation == "/"
      sum = number1 / number2
      equation = "#{number1.to_s} / #{number2.to_s} = #{sum}"
    end
    
    array1.push(equation)
    puts equation
  end
  
  bob = []
  loop do 
    answer = gets.chomp
    bob.push(answer)
    if answer == "="
      break
    end
  end
  calculation(equations, bob[0].to_i, bob[1], bob[2].to_i)
end

loop do
calculator
end