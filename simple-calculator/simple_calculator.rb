
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if not SimpleCalculator::ALLOWED_OPERATIONS.include?(operation)
      raise SimpleCalculator::UnsupportedOperation
    elsif not (first_operand.is_a?(Numeric) and second_operand.is_a?(Numeric))
      raise ArgumentError
    elsif operation == '/' and second_operand == 0
      return 'Division by zero is not allowed.'
    end
    result = 0
    case operation
    when '+'
      result = first_operand + second_operand
    when '*'
      result = first_operand * second_operand
    when '/'
      result = first_operand / second_operand
    end
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
