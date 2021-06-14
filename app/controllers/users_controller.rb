class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:sign_in]

  def show
    @created_events = current_user.events
    @previous_events = current_user.events.previous
    @upcoming_events = current_user.events.upcoming
  end
end
