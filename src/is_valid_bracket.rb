class Brackets
  def valid?(string)
    return false if string.length.odd?
    return false if string =~ /[^\{\}\(\)]/

    p = { '{' => '}', '(' => ')' }

    stack = []
    string.chars do |bracket|
      if expectation = p[bracket]
        stack << expectation
      else
        return false unless stack.pop == bracket
      end
    end

    stack.empty?
  end

  alias_method :isValidBracket, :valid?
end
