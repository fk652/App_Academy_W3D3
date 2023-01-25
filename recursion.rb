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