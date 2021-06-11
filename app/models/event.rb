class Event < ApplicationRecord
  belongs_to :user
  has_many :attended_events
  has_many :attendees, through: :attended_events, source: :user
  scope :future, -> { where('date >= ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }
end
