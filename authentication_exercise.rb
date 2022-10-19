users = [
    { username: "cax", password: "1234" },
    { username: "mrrobot", password: "5678" },
    { username: "kog", password: "1111" },
    { username: "koda", password: "2222" }
    ]
  
  def auth_user(username, password, list_of_users)
      list_of_users.each do |user_record| 
      if user_record[:username] == username && user_record[:password] == password
        return user_record
      end
    end
    "not correct"
  end
  
  puts "Welcome to the authenticator"
  25.times { print "-"}
  puts
  puts "This program will take input from the user and compare password"
  puts "If password is correct, you will get back the user object"
  
  
  attempts = 1
  while attempts < 4
    print "Username: "
    username_input = gets.chomp.downcase
    
    print "Password: "
    password_input = gets.chomp
  
    authentication = auth_user(username_input, password_input, users)
    puts authentication
    
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
  
    break if input == "n"
    attempts += 1
  end
  
  puts "You have exceeded the number of attempts" if attempts == 4
  
  
  
  