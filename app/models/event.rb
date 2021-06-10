class Event < ApplicationRecord
  belongs_to :user
  has_many :attended_events
  has_many :users, through: :attended_events
end
