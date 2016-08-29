class Attendee < ApplicationRecord
  validates :timePayment, allow_nil: true
  validates :amountBilled, numericality: true, allow_nil: true
  validates :amountPaid, numericality: true, allow_nil: true
  belongs_to :person
  belongs_to :event
end
