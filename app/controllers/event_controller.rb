class EventController < ApplicationController
  skip_before_action :verify_authenticity_token #TODO remove
 
  def new
    event = Event.create(event_params)

    render json: { name: event.name, uuid: event.uuid }
  end

  private

    def event_params
      params.permit(:name)
    end
end
