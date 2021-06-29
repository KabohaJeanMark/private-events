class UsersController < ApplicationController
  def show
    @user_events = current_user.events.all
    @my_upcoming_events = current_user.attended_events.upcoming
    @my_past_events = current_user.attended_events.past
  end
end
