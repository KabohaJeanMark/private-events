class EventsController < ApplicationController
  def index
    @passed_events = Event.past
    @upcoming_events = Event.upcoming
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @attendance = Attendance.new
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :date)
  end
end
