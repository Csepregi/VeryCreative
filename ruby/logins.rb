def rand_time
    Time.at(rand * Time.now.to_i)
  end
  
  people = [[2, 'matayo'], [1, 'nico'], [0, 'angelo'], [3, 'luca']]

  logins = { # ugly on purpose
    0 => [rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year],
    1 => [rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year],
    2 => [rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year],
    3 => [rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year, rand_time.year],
  }
 # <= I wrote .year to rand_time to get back only the years. 

 
#   logins.each do |key, value|
#     puts "The hash key is #{key} and the value is #{value}."
#   end

 
#p iterate(logins)
#   puts iterate(logins)
# def count_letters(hash, results = {})
#     hash.each do |key, value|
#       if value.kind_of?(Hash)
#         count_letters(value, results)
#       else
#         results[key] = (results[key] || 0) + 1
#       end
#     end
#     results
#   end
  
  #p count_letters(logins)

#   logins.each{ |key, value|
#     puts "Key = #{key} / Value = #{value}"
#   }

#   logins.each{ |child_arr|
#     child_arr.each{ |child_child_value | 
#      puts child_child_value
#     }
# }

logins.each do |element|
    element.each do |inner_element|
      p inner_element
    end
  end