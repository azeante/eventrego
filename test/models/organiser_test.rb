require 'test_helper'

class OrganiserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @organiser = Organiser.new(role: "administration", person_id: 1, event_id: 1)
  end

  test "should be valid" do
    assert @organiser.valid?
  end

  test "role should not be too long" do
    @organiser.role = "a" * 141
    assert_not @organiser.valid?
  end

end
