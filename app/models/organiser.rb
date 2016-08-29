class Organiser < ApplicationRecord
  validates: role, length: { maximum: 140 }, allow_nil: true
  belongs_to :person
  belongs_to :event
end
