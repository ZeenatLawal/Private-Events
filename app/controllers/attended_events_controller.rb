class AttendedEventsController < ApplicationController
  def show
    event = Event.find(params[:event_id])
    @attend = AttendedEvent.where('event_id = ?', event.id)
  end

  def create
    event = Event.find(params[:event_id])
    @attended_event = AttendedEvent.new(event_id: event.id, user_id: current_user.id)
    if @attended_event.save
      redirect_back(fallback_location: root_path)
    end
  end
end
