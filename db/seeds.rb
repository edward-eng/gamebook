require 'bgg'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Chris', email: 'c1@gmail.com', password: '1')
User.create!(name: 'Jon', email: 'j1@gmail.com', password: '1')
User.create!(name: 'Kevin', email: 'k1@gmail.com', password: '1')
User.create!(name: 'Ed', email: 'e1@gmail.com', password: '1')
User.create!(name: 'Guy', email: 'g1@gmail.com', password: '1')


# Game.create!(name: 'Settlers of Catan', game_type: 'board', pic: 'http://www.pic1.com', description: 'something1', rules_url: 'http://www.rules1.com', duration: '1hr', players: '2-4')
# Game.create!(name: 'Monopoly', game_type: 'board', pic: 'http://www.pic2.com', description: 'something2', rules_url: 'http://www.rules2.com', duration: '1hr', players: '2-4')
# Game.create!(name: 'Love Letter', game_type: 'card', pic: 'http://www.pic3.com', description: 'something3', rules_url: 'http://www.rules3.com', duration: '1hr', players: '2-4')
# Game.create!(name: 'Cards of Humanity', game_type: 'card', pic: 'http://www.pic4.com', description: 'something4', rules_url: 'http://www.rules4.com', duration: '1hr', players: '2-4')



#NUMBER OF MOVIES
NUMBER_BOARD_GAMES_INFO = 100
SECONDS_BETWEEN_REQUESTS = 4  #in seconds, limits hits to Boardgamegeek.com

i=1

while i < NUMBER_BOARD_GAMES_INFO
  my_game= BggApi.thing({id: i})  #Selects item 1 only - not sure how to get all of the games

    # p my_game.keys
    #hash requires you to get the 'item'

    game_info= my_game["item"]
     # game_info
    #p game_info[0].keys
  if game_info
    #Can't find name
    game_name = game_info[0]["name"][0]["value"]
    puts "#{i}Game Name: #{game_name}"

    #Game Type
    game_type = game_info[0]["type"]

    #Description
    game_desc = game_info[0]["description"][0]
    # puts "Description: #{game_desc}"

    #Min Players
    min_players = game_info[0]["minplayers"][0]["value"]
    # puts "Min Players: #{min_players}"

    #Max Players
    max_players = game_info[0]["maxplayers"][0]["value"]
    # puts "Max Players: #{max_players}"

    num_players = min_players != max_players ? "#{min_players}-#{max_players}" : "#{min_players}"
    # puts "Num Players: #{num_players}"
    #image
    game_image_url = game_info[0]["image"][0]
    # puts "image path #{game_image_url}"

    #duration
    #min time
    min_time = game_info[0]["minplaytime"][0]["value"]
    # max_time -- can be same as min time
    max_time = game_info[0]["maxplaytime"][0]["value"]
    #playing_time -- assumed to be average
    playing_time = game_info[0]["playingtime"][0]["value"]
    #time to play
    time_to_play = (min_time != max_time) ? "#{min_time}-#{max_time} mins." : "#{playing_time} mins."

    # puts "min time (min): #{min_time}"
    # puts "max time (min): #{max_time}"
    # puts "playing time (min): #{playing_time}"
    # puts "time_to_play (min): #{time_to_play}"
    sleep SECONDS_BETWEEN_REQUESTS

    Game.create!(name: game_name, game_type: game_type, pic: "https:#{game_image_url}", description: game_desc, rules_url: 'n/a', duration: "#{time_to_play}", players: "#{num_players}")
  end
  i+=1
end

Comment.create!(body: 'test1', game_id: 1, commenter_id: 1)
Comment.create!(body: 'test2', game_id: 2, commenter_id: 2)
Comment.create!(body: 'test3', game_id: 3, commenter_id: 3)
Comment.create!(body: 'test4', game_id: 4, commenter_id: 4)

Category.create!(name: 'strategy')
Category.create!(name: 'sports')
Category.create!(name: 'adventure')
Category.create!(name: 'role-playing')

SavedGame.create!(game_id: 1, user_id: 1)
SavedGame.create!(game_id: 2, user_id: 2)
SavedGame.create!(game_id: 3, user_id: 3)
SavedGame.create!(game_id: 4, user_id: 4)

Classification.create!(category_id: 1, game_id: 1)
Classification.create!(category_id: 1, game_id: 1)
Classification.create!(category_id: 4, game_id: 1)
Classification.create!(category_id: 3, game_id: 1)

Friendship.create!(accepting_id: 1, requesting_id: 2, pending_request: false)
Friendship.create!(accepting_id: 1, requesting_id: 3, pending_request: false)
Friendship.create!(accepting_id: 1, requesting_id: 4, pending_request: false)
Friendship.create!(accepting_id: 1, requesting_id: 5, pending_request: true)
Friendship.create!(accepting_id: 2, requesting_id: 5, pending_request: true)
Friendship.create!(accepting_id: 3, requesting_id: 5, pending_request: true)
Friendship.create!(accepting_id: 4, requesting_id: 5, pending_request: true)



