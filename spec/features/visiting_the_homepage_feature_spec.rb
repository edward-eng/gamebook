require 'rails_helper'

feature 'visiting the homepage' do
  scenario 'the user sees a list of games' do
    some_game = Game.create!(name: 'Risk', game_type: 'strategy', pic: 'http://www.gamepic.com', description: 'something about the game', rules_url: 'http://www.gamerules.com', duration: 'many many days', players: '2-4')

    visit '/'

    within('.game-list') do
      expect(page).to have_content some_game.name
    end
  end

  scenario 'the user sees a links nav bar' do
    visit '/'
    page.should have_link('Register')
    page.should have_link('Login')
    page.should have_link('Users')
  end
end
