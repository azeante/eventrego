require 'test_helper'

class PresenterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @presenter = Presenter.new(biography: "P was born in Singapore", remunerationArrangements: "allowance of SGD30 per day", allowance: 60, remuneration: 0, person_id: 1, event_id: 1)
  end

  test "should be valid" do
    assert @presenter.valid?
  end

  test "biography should not be too long" do
    @presenter.biography = "a" * 501
    assert_not @presenter.valid?
  end

  test "remunerationArrangements should not be too long" do
    @presenter.remunerationArrangements = "a" * 501
    assert_not @presenter.valid?
  end

  test "allowance should be numeric" do
    @presenter.allowance = "aaaa"
    assert_not @presenter.valid?
  end

  test "remuneration should be numeric" do
    @presenter.remuneration = "aaaa"
    assert_not @presenter.valid?
  end

  test "amount should be at least 0" do
    @presenter.remuneration = 1
    @presenter.allowance = 1
    assert @presenter.valid?
  end

end
