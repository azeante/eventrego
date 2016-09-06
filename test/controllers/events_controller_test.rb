require 'test_helper'


class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:fridaycocktails)
    @other_user = users(:effie)
  end

  # Hartl tests listing 13.31

  test "should redirect index when not logged in" do
    get events_path
    assert_redirected_to login_url
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Event.count' do
      post events_path, params: { event: { dateOfEvent: Date.today,
        maximumParticipants: 10,
        minimumParticipants: 5,
        notes: "myNotes",
        participantsMustBring: "myEquipment",
        price: 4.99,
        timeOfEvent: Time.now,
        title: "myTitle" ,
        venue: "myVenue" } }
      end
      assert_redirected_to login_url
    end

    test "should redirect destroy when not logged in as admin" do
      log_in_as(@other_user)
      assert_no_difference 'Event.count' do
        delete event_path(@event)
      end
      assert_redirected_to login_url
    end

  end
