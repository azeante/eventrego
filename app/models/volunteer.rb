class Volunteer < ApplicationRecord
  validates :role, length: { maximum: 140 }
  belongs_to :person
  belongs_to :event
end
