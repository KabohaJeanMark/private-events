class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, foreign_key: 'creator_id'
  has_many :attendances, foreign_key: "attendee_id"
  has_many :attended_events, class_name: 'Event', through: :attendances , source: "event"
end
