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