class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendances
  has_many :attendees, class_name: 'User', through: :attendances, source: 'attendee'

  scope :past, -> { where('date < ?', DateTime.now) }
  scope :upcoming, -> { where('date >= ?', DateTime.now) }
end
