require 'rails_helper'

RSpec.describe "Routing to the application", :type => :routing do
  it "GET / routes to games#index" do
    expect(get: "/").to route_to("games#index")
  end

  it "GET /games/:id routes to games#show" do
    expect(get: "/games/1").to route_to(controller:'games', action: 'show', id:'1')
  end
end
