
#input = "12-18,7,21-23,88"

def parse_tests_numbers_from_argument(arg)

  final_nums = []
  puts "hello"
  res = arg.split(',')

  p res
  p "executing deal with hyphen"

  # loop over res - res is an array of string
  # 1. if object has '-' do "deal_with_hyphen"
  # 2. if object does not has '-' insert number has is

  res.each{|x|
  	if x.include?('-')
  		# extcract min and max (the two numbers in the string)
  		# call func - deal_with_hypen(min, max)
  		min_and_max = x.split('-')
  		p min_and_max

  		y = deal_with_hyphen(min_and_max[0],min_and_max[1])
  		final_nums.push(y)
  	else
  		# push the sring to  final_num
  		final_nums.push(x)
  	end
  }

  final_nums = final_nums.flatten


p "final array is:"
  p final_nums

  # deal_result = deal_with_hyphen(min,max)
  return [] 

end

def deal_with_hyphen(min,max)
	arr_of_numbers_in_range = []
	  for i in min..max
	  	
	   arr_of_numbers_in_range.push(i) 
	  end

	  return arr_of_numbers_in_range

end

input = "12-18,55-59"
# input = "123"

parse_tests_numbers_from_argument(input)