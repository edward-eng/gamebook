require 'rails_helper'

feature 'visiting the homepage' do
  scenario 'the user sees a list of games' do
    some_game = Game.create!(name: 'Risk', game_type: 'strategy', pic: 'http://www.gamepic.com', description: 'something about the game', rules_url: 'http://www.gamerules.com', duration: 'many many days', players: '2-4')

    visit '/'

    within('.game-list') do
      expect(page).to have_content some_game.name
    end
  end
end
