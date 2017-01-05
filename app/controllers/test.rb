
  require 'pry-debugger'
  require 'bgg-api'
  
  bgg = BggApi.new
  puts "What user's collection do you want to find?"
  username = gets
  username = username.chomp

  collection = bgg.collection({username: username})
  if collection["totalitems"].to_i == 0
    puts "sorry that user doesn't have any games"
  else
    list = collection["item"].to_a
  
    game_names = Array.new
  
    list.each do |game|
      game_names << Hash[:name, game["name"][0]["content"]]
    end
    
    puts game_names.count
  end