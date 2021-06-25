class Attendance < ApplicationRecord
  belongs_to : events
  belongs_to : attendee, class_name: "User"
end
