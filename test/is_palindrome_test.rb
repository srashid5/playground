require '../src/is_palindrome'

def values(singly_linked_list)
  singly_linked_list.list.map {|s| s.val }.join
end

def run_test(expectation, data)
  sl = data
  result = sl.isPalindrome
  test_status = expectation == result ? "\e[32m#{'passed'}\e[0m" : "\e[31m#{'failed'}\e[0m"

  puts ""
  puts "- the singly linked list '#{values sl}' was evaluated to #{result}"
  puts "- the expectation was #{expectation} and the test #{test_status}"
end

sl = LinkedList.new 'a'
sl.add 'b'
sl.add 'c'
run_test false, sl

sl = LinkedList.new 'a'
sl.add 'b'
sl.add 'a'
run_test true, sl


