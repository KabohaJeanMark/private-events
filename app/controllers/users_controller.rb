class UsersController < ApplicationController
  def show
    @user_events = current_user.events.all
  end
end
