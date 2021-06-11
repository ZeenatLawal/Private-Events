class UsersController < ApplicationController
    def show
        @event = Event.where('user_id = ?', current_user.id)
        # @attended = AttendedEvent.where('user_id = ?', current_user.id)
    end
end
