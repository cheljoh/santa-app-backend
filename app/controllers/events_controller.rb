class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token #TODO remove
 
  def new
    event = Event.create(event_params)

    render json: { name: event.name, uuid: event.uuid }
  end

  def show
    event = Event.find_by(uuid: event_params.fetch(:uuid))

    render json: { name: event.name }
  end

  private

    def event_params
      params.permit(:name, :id, :uuid)
    end
end
