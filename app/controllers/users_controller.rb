class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:sign_in]

  def show
    @event = Event.where('user_id = ?', current_user)
    # @attended = AttendedEvent.where('user_id = ?', current_user.id)
  end
end
