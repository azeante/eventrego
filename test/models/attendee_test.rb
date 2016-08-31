require 'test_helper'

class AttendeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @attendee = Attendee.new(timePayment: Time.new(2016, 8, 26,  16,  0,  0), amountBilled: 15.00, amountPaid: 0, person_id: 1, event_id: 1)
  end

  test "should be valid" do
    assert @attendee.valid?
  end

  test "amountBilled should be numeric" do
    @attendee.amountBilled = "aaaa"
    assert_not @attendee.valid?
  end

  test "amountPaid should be numeric" do
    @attendee.amountPaid = "aaaa"
    assert_not @attendee.valid?
  end

  test "amount should be at least 0" do
    @attendee.amountBilled = 1
    @attendee.amountPaid = 1
    assert @attendee.valid?
  end

  test "amountPaid should <= amountBilled" do
    @attendee.amountBilled = 5
    @attendee.amountPaid = 4
    assert @attendee.valid?
  end
end
