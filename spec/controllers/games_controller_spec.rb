require 'rails_helper'

describe GamesController do
  describe "games controller" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "responds with status code 200 when displaying the games#show page" do
        get(:show, { id: 1 })
        expect(response).to have_http_status 200
      end
  end
end
