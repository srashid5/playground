require '../src/is_valid_bracket'

def red(mytext)
  "\e[31m#{mytext}\e[0m"
end

def run_test(expectation, data)
  result = Brackets.new.isValidBracket(data)
  test_status = expectation == result ? "\e[32m#{'passed'}\e[0m" : "\e[31m#{'failed'}\e[0m"

  puts ""
  puts "- the expression #{data} was evaluated to #{result}"
  puts "- the expectation was #{expectation} and the test #{test_status}"
end

run_test false, '{(()}'
run_test true, '{()}{()}'
run_test false, '{{}}'
run_test true, '{(}{()}'
