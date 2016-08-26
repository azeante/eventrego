class Person < ApplicationRecord
  validates: firstName, presence: true, length: { in: 2..20 }
  validates: lastName, presence: true, length: { in: 2..20 }
  validates: emailAddress, presence: true, length: { in: 2..20 }, uniqueness: true
  validates: telNo, presence: true, numericality: { only_integer: true }, length: { minimum: 7 }, uniqueness: true
  validates: ifSubscribed, presence: true
  validates: gender, presence: true, inclusion: { in: %w(M F), message: "%{value} is not valid" }
  has_many :volunteers
  has_many :organisers
  has_many :attendees
  has_many :presenters
end
