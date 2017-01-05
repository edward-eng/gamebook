require 'rails_helper'

feature "visiting the user page" do
  scenario "the user sees a list of recent games and can view them" do
    # Create a most recent game that should definitely appear in the list
    new_game = Game.find(id: 1) #Game.create!(name: "Dogs of Death")

    visit "/games/1"

    expect(page).to have_current_path game_path(new_game)
  end


end
