class User < ApplicationRecord
  has_many :events
  has_many :attended_events
  has_many :events, through: :attended_events

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
