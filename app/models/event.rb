class Event < ApplicationRecord
  validates :dateOfEvent, presence: true
  validates :timeOfEvent, presence: true
  validates :venue, presence: true, length: { maximum: 140 }
  validates :price, numericality: true, if: :is_at_least_zero?(price)
  validates :title, presence: true, length: { in: 2..50 }
  validates :maximumParticipants, numericality: { only_integer: true }, if: :is_more_than_zero?(maximumParticipants), if: :maximumParticipants_is_more_than_minimumParticipants?(maximumParticipants, minimumParticipants)
  validates :minimumParticipants, numericality: { only_integer: true }, if: :is_more_than_zero?(minimumParticipants)
  validates :participantsMustBring, length: { maximum: 140 }, allow_nil: true
  validates :notes, length: { maximum: 140 }, allow_nil: true

  def is_at_least_zero?(variable)
    if variable >= 0
      return true
    else
      return false
  end

  def is_more_than_zero?(variable)
    if variable > 0
      return true
    else
      return false
  end

  def maximumParticipants_is_more_than_minimumParticipants?(max, min)
    if max > min
      return true
    else
      return false
  end

  has_many :volunteers
  has_many :organisers
  has_many :attendees
  has_many :presenters
  validates_associated :volunteers
  validates_associated :organisers
  validates_associated :attendees
  validates_associated :presenters
end
