def range(num_1, num_2)
  return [] if num_2 == num_1
  last_num = num_2 - 1
  final_arr = range(num_1, last_num)
  final_arr << last_num
end
p range(1, 5)

def range_iter(num_1, num_2)
  final_arr = []
  (num_1...num_2).each do |num|
    final_arr << num
  end
  final_arr
end
p range_iter(1, 5)

def exp(base, power)
  return 0 if base == 0
  return 1 if power == 0
  base * exp(base, power - 1)
end

p exp(0, 5)
p exp(3, 3)
p exp(4, 2)

def exp_2(base, power)
  return 1 if power == 0
  return base if power == 1
  if power.even?
    exp_2(base, power/2) ** 2
  elsif power.odd?
    base * (exp_2(base, (power - 1)/ 2) ** 2)
  end
end

p exp_2(2, 2)
p exp_2(2, 3)
p exp_2(2, 10)
p exp_2(2, 11)
puts

def dup(arr)
  # return [arr] if !arr.is_a? Array

  final_arr = []
  arr.each do |ele|
    if ele.is_a? Array
      # p dup(ele)
      final_arr << dup(ele)
      # p final_arr
    else
      final_arr << ele
    end
  end
  final_arr
end

a_original = [1, [1, 2, 3], 4, [5, 6, 7], 8]
p a_original
p a_original.object_id
a_original.each { |ele| p ele.object_id }
puts

a_copy = dup(a_original)
p a_copy
p a_copy.object_id
a_copy.each { |ele| p ele.object_id }
puts

def fibonacci(num)
  final_arr = [0, 1]
  return final_arr.take(num) if num <= 2
  # return [] if num == 0
  # return [0] if num == 1
  # return [0, 1] if num == 2

  (num-2).times do
    final_arr << final_arr[-1] + final_arr[-2]
  end
  final_arr
end

p fibonacci(5)
p fibonacci(2)
p fibonacci(1)
p fibonacci(0)
puts

def fib(num)
  # final_arr = [0, 1]
  return [0, 1].take(num) if num <= 2

  prev_fib = fib(num-1)
  # prev_fib << prev_fib[-1] + prev_fib[-2]
  final_arr = [*prev_fib, prev_fib[-1] + prev_fib[-2]]
end

p fib(5)
p fib(2)
p fib(1)
p fib(0)