require_relative 'my_list'

# Testing implementation of MyList and MyEnumerable
def run_test(description, condition)
  puts "#{description}: #{condition ? 'Passed' : 'Failed'}"
end

def run_tests
  list = MyList.new(1, 2, 3, 4)

  # Test #all?
  run_test('All elements < 5', list.all? { |e| e < 5 }) # Expected: true
  run_test('All elements > 5', list.all? { |e| e > 5 }) # Expected: false

  # Test #any?
  puts("\nTesting #any?")
  run_test('Any element == 2', list.any? { |e| e == 2 }) # Expected: true
  run_test('Any element == 5', list.any? { |e| e == 5 }) # Expected: false

  # Test #filter
  puts("\nTesting #filter")
  filtered = list.filter(&:even?) # Using Symbol to Proc conversion
  run_test('Filtered even elements', filtered == [2, 4]) # Expected: [2, 4]
end

# Run the tests
run_tests
