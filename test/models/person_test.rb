require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @person = Person.new(firstName: "Tammy", lastName: "Soho", emailAddress: "eihornillo8@yopmail.com", telNo: "1881115", ifSubscribed: true, gender: "F")
  end

  test "should be valid" do
    assert @person.valid?
  end

  test "firstName should be present" do
    @person.firstName = ""
    assert_not @person.valid?
  end

  test "lastName should be present" do
    @person.lastName = ""
    assert_not @person.valid?
  end

  test "email should be present" do
    @person.email = ""
    assert_not @person.valid?
  end
end
