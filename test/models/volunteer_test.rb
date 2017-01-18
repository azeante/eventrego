require 'test_helper'

class VolunteerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @volunteer = Volunteer.new(role: "usher", person_id: 1, event_id: 1)
  end

  test "should be valid" do
    assert @volunteer.valid?
  end

  test "role should not be too long" do
    @volunteer.role = "a" * 141
    assert_not @volunteer.valid?
  end


end
