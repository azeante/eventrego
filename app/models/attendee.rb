class Attendee < ApplicationRecord
  validates :amountBilled, numericality: true, unless: :amount_is_under_zero?
  validates :amountPaid, numericality: true, unless: (:amount_is_under_zero? && :amountPaid_exceeds_amountBilled?)
  belongs_to :person
  belongs_to :event

  def amount_is_under_zero?

    if amountBilled < 0 || amountPaid < 0
      return true
    else
      return false
      end
  end

  def amountPaid_exceeds_amountBilled?
    if amountPaid > amountBilled
      return true
    else
      return false
      end
  end

end
