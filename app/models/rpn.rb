class Rpn < ActiveRecord::Base
  def calculate(data,deli=",")
    expression = data.split(deli)
    operands = []
    evaluation = []
    exception_check(expression)
    expression.each do |x|
      case x
      when /\d/
        evaluation.push(x.to_f)
      when "-", "/", "*", "+"
        operands = evaluation.pop(2)
        evaluation.push(operands[0].send(x, operands[1]))
      when "%"
        operands = evaluation.pop(1)
        evaluation.push(operands[0].send('*', 0.01))
      when "^"
        operands = evaluation.pop(2)
        evaluation.push(operands[0].send('**', operands[1]))
      else
        raise NameError
      end
    end
    evaluation.sum
  rescue NameError
    return "Only numbers are allowed. Your first number should be number."
  end

  def exception_check(array_of_numbers,operators=["-", "/", "*", "+",'^','%'])
    if !operators.include?(array_of_numbers.last) || operators.include?(array_of_numbers.first)#&& data.length > 1
      raise NameError
    end
  end
end
