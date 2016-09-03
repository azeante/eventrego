class Person < ApplicationRecord
  before_save { emailAddress.downcase! }

  validates :firstName, presence: true, length: { in: 2..20 }
  validates :lastName, presence: true, length: { in: 2..20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :emailAddress, presence: true, length: { in: 2..30 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX,
    message: "invalid" }
  validates :telNo, numericality: { only_integer: true }, allow_nil: true, length: { in: 6..30 }, uniqueness: true, if: :is_more_than_zero?
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

  def is_more_than_zero?
    if telNo > 0
      return true
    else
      return false
      end
  end
end
