def select_elements_starting_with_a(array)
	array.select { |item| item.chr == "a" }
end

def select_elements_starting_with_vowel(array)
	array.select { |item| item.chr =~ /\A[aeiou]/ }
end

def remove_nils_from_array(array)
  array.select { |item| item != nil }
end

def remove_nils_and_false_from_array(array)
  array.select { |item| item unless item == nil || item == false }
end

def reverse_every_element_in_array(array)
  array.select { |item| item.reverse! }
end

def every_possible_pairing_of_students(array)
  array.combination(2).to_a
end

def all_elements_except_first_3(array)
  array.shift(3)
  return array
end

def add_element_to_beginning_of_array(array)
  array.rotate.flatten
end

def array_sort_by_last_letter_of_word(array)
  array1 = array.select { |item| item.reverse! }.sort!.select { |item| item.reverse! }
end

def get_first_half_of_string(string)
  string.slice(0, (string.length / 2))
end

def make_numbers_negative(number)
	number = number * -1 unless number < 0
	return number
end

def separate_array_into_even_and_odd_numbers(array)
  even_numbers = array.select { |number| number % 2 == 0}
  odd_numbers = array.select { |number| number % 2 == 1}
  return [even_numbers, odd_numbers]
end

def number_of_elements_that_are_palindromes(array)
  array.select { |item| item == item.reverse }.count
end

def shortest_word_in_array(array)
  array.sort_by { |word| word.length }.first
end

def longest_word_in_array(array)
  array.sort_by { |word| word.length }.last
end

def total_of_array(array)
  array.inject(:+)
end

def double_array(array)
  array + array
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  average = array.inject(0.0) { |sum, el| sum + el } / array.size
  average.ceil
end

def get_elements_until_greater_than_five(array)
  array[0..5]
end
