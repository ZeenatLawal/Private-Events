class UsersController < ApplicationController
    def show
        @event = Event.where('user_id = ?', current_user.id)
    end
end
