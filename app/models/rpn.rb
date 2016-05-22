class Rpn < ActiveRecord::Base
  def calculate(data,deli=",")
    array_of_numbers=data.split(deli)
    operators=["+","-","/","*","%"]
    exception_check(array_of_numbers,operators)
    output=0
    opt_string=""
    array_of_numbers.each_with_index do |data,index|
      if operators.include?(array_of_numbers[index])
        if data == '%'
          opt_string = eval("#{opt_string.to_f}/100.00")
        elsif data == '*'
          opt_string = opt_string.to_s[0..-2].to_i * opt_string.to_s[-1].to_i
        else
          opt_string = eval("#{opt_string.to_s[0..-2]}#{array_of_numbers[index]}#{opt_string.to_s[-1]}")
        end
      else
        opt_string.to_s<<data.to_s
      end
    end
    opt_string.to_i
  rescue NameError
    return "Only numbers are allowed"
  end

  def exception_check(array_of_numbers,operators)
    if !array_of_numbers.include?('+') && !array_of_numbers.include?('-') && !array_of_numbers.include?('/') && !array_of_numbers.include?('*') && !array_of_numbers.include?('%')
      return array_of_numbers.join('').to_f
    end
    unless operators.include?(array_of_numbers.last) #&& data.length > 1
      return "Last string should be an operator"
    end
    if operators.include? array_of_numbers.first
      return "First letter can't be an operator"
    end
  end
end
