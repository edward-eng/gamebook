require 'rails_helper'
# RSpec.describe UserController, type: :controller do
# end

describe UserController do
  describe "user controller" do
    it "responds with status code 200" do
      get :show
      expect(response).to have_http_status 200
    end
  end
end
