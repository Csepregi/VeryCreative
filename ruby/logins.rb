def rand_time
    Time.at(rand * Time.now.to_i)
  end
  
  people = [[2, 'matayo'], [1, 'nico'], [0, 'angelo'], [3, 'luca']]


logins = { # ugly on purpose
    0 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
    1 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
    2 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
    3 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
  }

users_logins = Hash.new

people.each do |users|
    username = users[1]
    userid = users[0]
    
    users_logins[username] = Hash.new
    
    for login in logins[userid] 
        year = login.year
            users_logins[username][year]  = (users_logins[username][year]  || 0) + 1
    end
end

p users_logins

