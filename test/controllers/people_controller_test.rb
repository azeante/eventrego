require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:michael)
  end

  def teardown
    @person = nil
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

#should not create person if emailAddress exists
# Should create person if emailAddress doesn't exist
test "should create person" do
  if Person.exists?(emailAddress: @person.emailAddress)
    assert_difference('Person.count', 0) do
      post people_url, params: { person: { emailAddress: @person.emailAddress,
        firstName: @person.firstName, gender: @person.gender,
        ifSubscribed: @person.ifSubscribed,
        lastName: @person.lastName, telNo: @person.telNo } }
      end
    else
      assert_difference('Person.count') do
        post people_url, params: { person: { emailAddress: @person.emailAddress,
          firstName: @person.firstName, gender: @person.gender,
          ifSubscribed: @person.ifSubscribed,
          lastName: @person.lastName, telNo: @person.telNo } }
        end
        assert_redirected_to person_url(Person.last)
      end
    end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { emailAddress: @person.emailAddress,
      firstName: @person.firstName, gender: @person.gender,
      ifSubscribed: @person.ifSubscribed, lastName: @person.lastName,
      telNo: @person.telNo } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
