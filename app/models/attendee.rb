class Attendee < ApplicationRecord
  validates :amountBilled, numericality: true
  validates :amountPaid, numericality: true
  belongs_to :person
  belongs_to :event
end
