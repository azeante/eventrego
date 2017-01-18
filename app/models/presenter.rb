class Presenter < ApplicationRecord
  validates :biography, length: { maximum: 500 }, allow_nil: true
  validates :remunerationArrangements, length: { maximum: 500 }, allow_nil: true
  validates :allowance, numericality: true,  unless: :amount_is_under_zero?
  validates :remuneration, numericality: true,  unless: :amount_is_under_zero?
  belongs_to :person
  belongs_to :event

  def amount_is_under_zero?
    if remuneration < 0 || allowance < 0
      return true
    else
      return false
      end
  end

end
