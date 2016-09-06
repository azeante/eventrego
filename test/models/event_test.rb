require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @event = Event.new(dateOfEvent: Date.new(2016, 8, 26), timeOfEvent: Time.new(2016, 8, 26,  16,  0,  0), venue: "Boulevard Cundinamarca No. 506, 36451, Singapore", price: 15.00, title: "Dominican Cooking 101", maximumParticipants: 20, minimumParticipants: 6, participantsMustBring: "notebook and pen", notes: "Jar of salsa for each participant" )
  end

  test "should be valid" do
    assert @event.valid?
  end

  test "dateOfEvent should be present" do
    @event.dateOfEvent = ""
    assert_not @event.valid?
  end

  test "timeOfEvent should be present" do
    @event.timeOfEvent = ""
    assert_not @event.valid?
  end

  test "venue should be present" do
    @event.venue = ""
    assert_not @event.valid?
  end

  test "venue should not be too long" do
    @event.venue = "a" * 141
    assert_not @event.valid?
  end

  test "price should be numeric" do
    @event.price = "aaaa"
    assert_not @event.valid?
  end

  test "price should be at least 0" do
    @event.price = 2
    assert @event.valid?
  end

  test "title should be present" do
    @event.title = ""
    assert_not @event.valid?
  end

  test "title should not be too long" do
    @event.title = "a" * 51
    assert_not @event.valid?
  end

  test "title should not be too short" do
    @event.title = "a"
    assert_not @event.valid?
  end

  test "maximumParticipants should be integer" do
    @event.maximumParticipants = 6
    assert @event.valid?
  end

  test "minimumParticipants should be integer" do
    @event.minimumParticipants = 2
    assert @event.valid?
  end

  test "maximumParticipants and minimumParticipants should exceed 0" do
    @event.maximumParticipants = 5
    @event.minimumParticipants = 2
    assert @event.valid?
  end

  test "maximumParticipants should exceed minimumParticipants" do
    @event.maximumParticipants = 10
    @event.minimumParticipants = 5
    assert @event.valid?
  end

  test "participantsMustBring should not be too long" do
    @event.participantsMustBring = "a" * 141
    assert_not @event.valid?
  end

  test "notes should not be too long" do
    @event.notes = "a" * 141
    assert_not @event.valid?
  end

  test "order should be most recent first" do
  assert_equal events(:most_recent), Event.first
end


end
