require "rails_helper"

RSpec.describe "Events controller", type: :request do

    it "can make an event" do
        post "/events/new", params: { name: "test" }

        expect(response.status).to eq(200)
        event = JSON.parse(response.body, symbolize_names: true)

        expect(event[:name]).to eq("test")
        expect(event[:uuid].length).to eq(36)
        expect(Event.count).to eq(1)
    end

    it "can show an event" do
        event = Event.create(name: "some event")

        get "/events/#{event.uuid}"

        event = JSON.parse(response.body, symbolize_names: true)
        expect(event[:name]).to eq("some event")
    end
end