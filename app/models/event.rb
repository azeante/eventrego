class Event < ApplicationRecord
  validates: dateOfEvent
  validates: timeOfEvent
  validates: venue
  validates: price
  validates: title
  validates: maximumParticipants
  validates: minimumParticipants
  validates: participantsMustBring
  validates: notes
  has_many :volunteers
  has_many :organisers
  has_many :attendees
  has_many :presenters

end
