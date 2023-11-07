require "rails_helper"

RSpec.describe "Events controller", type: :request do

    it "can make an event" do
        post "/event/new", params: { name: "test" }

        expect(response.status).to eq(200)

        expect(Event.last.name).to eq("test")
        expect(Event.count).to eq(1)
    end
end