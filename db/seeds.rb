# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Chris', email: 'c1@gmail.com', hashed_password: '1')
User.create!(name: 'Jon', email: 'j1@gmail.com', hashed_password: '1')
User.create!(name: 'Kevin', email: 'k1@gmail.com', hashed_password: '1')
User.create!(name: 'Ed', email: 'e1@gmail.com', hashed_password: '1')

Game.create!(name: 'Settlers of Catan', game_type: 'board', pic: 'http://www.pic1.com', description: 'something1', rules_url: 'http://www.rules1.com', duration: '1hr', players: '2-4')
Game.create!(name: 'Monopoly', game_type: 'board', pic: 'http://www.pic2.com', description: 'something2', rules_url: 'http://www.rules2.com', duration: '1hr', players: '2-4')
Game.create!(name: 'Love Letter', game_type: 'card', pic: 'http://www.pic3.com', description: 'something3', rules_url: 'http://www.rules3.com', duration: '1hr', players: '2-4')
Game.create!(name: 'Cards of Humanity', game_type: 'card', pic: 'http://www.pic4.com', description: 'something4', rules_url: 'http://www.rules4.com', duration: '1hr', players: '2-4')

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

Friendship.create!(accepting_id: 1, requesting_id: 2)
Friendship.create!(accepting_id: 1, requesting_id: 3)
Friendship.create!(accepting_id: 1, requesting_id: 4)
