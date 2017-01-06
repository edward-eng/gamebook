require 'rails_helper'

describe GamesController do
  describe "games controller" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end
  end

  describe "games controller show method" do
    it "responds with a status code 200" do
      get(:show, { id: 1 })
      expect(response).to have_http_status 200
    end
  end
end
