class Presenter < ApplicationRecord
  validates :biography, length: { maximum: 500 }, allow_nil: true
  validates :remunerationArrangements, length: { maximum: 500 }, allow_nil: true
  validates :allowance, numericality: true, allow_nil: true
  validates :remuneration, numericality: true, allow_nil: true
  belongs_to :person
  belongs_to :event
end
