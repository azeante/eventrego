class Event < ApplicationRecord
  validates :dateOfEvent, presence: true
  validates :timeOfEvent, presence: true
  validates :venue, presence: true, length: { maximum: 140 }
  validates :price, numericality: true, allow_nil: true
  validates :title, presence: true, length: { in: 2..50 }
  validates :maximumParticipants, numericality: { only_integer: true }, allow_nil: true
  validates :minimumParticipants, numericality: { only_integer: true }, allow_nil: true
  validates :participantsMustBring, length: { maximum: 140 }, allow_nil: true
  validates :notes, length: { maximum: 140 }, allow_nil: true
  has_many :volunteers
  has_many :organisers
  has_many :attendees
  has_many :presenters
  validates_associated :volunteers
  validates_associated :organisers
  validates_associated :attendees
  validates_associated :presenters
end
