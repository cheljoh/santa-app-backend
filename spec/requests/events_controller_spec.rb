require "rails_helper"

RSpec.describe "Events controller", type: :request do

    it "can make an event" do
        post "/event/new", params: { name: "test" }

        expect(response.status).to eq(200)
        event = JSON.parse(response.body, symbolize_names: true)

        expect(event[:name]).to eq("test")
        expect(event[:uuid].length).to eq(36)
        expect(Event.count).to eq(1)
    end
end