require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @admin = users(:michael)
    @non_admin = users(:effie)
  end

  test "index as admin including pagination and delete links" do
    log_in_as(@admin)
    get users_path
    assert_template 'users/index'
    assert_select 'div.pagination'
    assert_select "a", text: 'delete', count: 5
    assert_difference 'User.count', -1 do
      delete user_path(@non_admin)
    end
  end

 # should not be able to access index if non-admin
  test "index as non-admin" do
    log_in_as(@non_admin)
    get users_path
    assert_redirected_to login_url
  end

end
