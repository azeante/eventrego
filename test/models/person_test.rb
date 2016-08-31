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

  test "firstName should not be too long" do
    @person.firstName = "a" * 51
    assert_not @person.valid?
  end

  test "lastName should be present" do
    @person.lastName = ""
    assert_not @person.valid?
  end

  test "lastName should not be too long" do
    @person.lastName = "a" * 51
    assert_not @person.valid?
  end

  test "email should be present" do
    @person.emailAddress = ""
    assert_not @person.valid?
  end

  test "email should not be too long" do
  @person.emailAddress = "a" * 244 + "@example.com"
  assert_not @person.valid?
  end

  test "email should be in right format" do
  @person.emailAddress = "a" * 244
  assert_not @person.valid?
  end

  test "email addresses and telNo should be unique" do
    duplicate_person = @person.dup
    duplicate_person.emailAddress = @person.emailAddress.upcase
    @person.save
    assert_not duplicate_person.valid?
  end

  test "telNo should be integer" do
    @person.telNo = 1.56837502
    assert_not @person.valid?
  end

  test "telNo should not be too short" do
    @person.telNo = 11111
    assert_not @person.valid?
  end

  test "telNo should not be too long" do
    @person.telNo = "2" * 31
    assert_not @person.valid?
  end

  test "telNo should exceed 0" do
    @person.telNo = 222222
    assert @person.valid?
  end

  test "ifSubscribed should be present" do
    @person.ifSubscribed = ""
    assert_not @person.valid?
  end

  test "gender should be present" do
    @person.gender = ""
    assert_not @person.valid?
  end

  test "gender should be in set" do
    @person.gender = "G"
    assert_not @person.valid?
  end

end
