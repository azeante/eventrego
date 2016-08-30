class Person < ApplicationRecord
  validates :firstName, presence: true, length: { in: 2..20 }
  validates :lastName, presence: true, length: { in: 2..20 }
  validates :emailAddress, presence: true, length: { in: 2..30 }, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: "invalid" }
  validates :telNo, allow_nil: true, length: { in: 6..30 }, uniqueness: true
  validates :ifSubscribed, presence: true
  validates :gender, presence: true, inclusion: { in: %w(M F), message: "%{value} is invalid" }
  has_many :volunteers
  has_many :organisers
  has_many :attendees
  has_many :presenters
  validates_associated :volunteers
  validates_associated :organisers
  validates_associated :attendees
  validates_associated :presenters
end
