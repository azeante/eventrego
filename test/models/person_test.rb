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

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @person.emailAddress = valid_address
      assert @person.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
   invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                          foo@bar_baz.com foo@bar+baz.com foo@bar..com]
   invalid_addresses.each do |invalid_address|
     @person.emailAddress = invalid_address
     assert_not @person.valid?, "#{invalid_address.inspect} should be invalid"
   end
 end

 test "email addresses should be unique" do
   duplicate_person = @person.dup
   duplicate_person.emailAddress = @person.emailAddress.upcase
   @person.save
   assert_not duplicate_person.valid?
 end

 test "email addresses should be saved as lower-case" do
   mixed_case_email = "Foo@ExAMPle.CoM"
   @person.emailAddress = mixed_case_email
    @person.save
   assert_equal mixed_case_email.downcase, @person.reload.emailAddress
 end

  test "telNo should be unique" do
    duplicate_person = @person.dup
    duplicate_person.telNo = @person.telNo
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
