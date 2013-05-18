class EventsController < ApplicationController

  #example: curl -d "token=asdsdf&user=aufi&host=vila&log_action=test" http://localhost:3000/events/create
  def create
    @company = Company.find_by_token(params[:token])
    @event = Event.new
    @event.company = @company
    @event.user = params[:user]
    @event.host = params[:host]
    @event.action = params[:log_action]
    if @event.save
      render text: "OK", status: 200
    else
      render text: "Event save failed: #{@event.errors.full_messages.to_sentence}", status: 422
    end
  end
end
