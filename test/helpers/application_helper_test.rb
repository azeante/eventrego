require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Event Registration"
    assert_equal full_title("Help"), "Help | Event Registration"
  end
end
