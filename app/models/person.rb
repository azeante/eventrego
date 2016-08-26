class Person < ApplicationRecord
  has_many :volunteers
  has_many :organisers
  has_many :attendees
  has_many :presenters
end
