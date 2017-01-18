require 'test_helper'

class PresentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presenter = presenters(:cocktailpresenter)
  end

  test "should get index" do
    get presenters_url
    assert_response :success
  end

  test "should get new" do
    get new_presenter_url
    assert_response :success
  end

  test "should create presenter" do
    assert_difference('Presenter.count') do
      post presenters_url, params: { presenter: { allowance: @presenter.allowance,
          biography: @presenter.biography, event_id: @presenter.event_id,
          person_id: @presenter.person_id, remuneration: @presenter.remuneration,
          remunerationArrangements: @presenter.remunerationArrangements } }
    end

    assert_redirected_to presenter_url(Presenter.last)
  end

  test "should show presenter" do
    get presenter_url(@presenter)
    assert_response :success
  end

  test "should get edit" do
    get edit_presenter_url(@presenter)
    assert_response :success
  end

  test "should update presenter" do
    patch presenter_url(@presenter), params: { presenter: { allowance: @presenter.allowance, biography: @presenter.biography, event_id: @presenter.event_id, person_id: @presenter.person_id, remuneration: @presenter.remuneration, remunerationArrangements: @presenter.remunerationArrangements } }
    assert_redirected_to presenter_url(@presenter)
  end

  test "should destroy presenter" do
    assert_difference('Presenter.count', -1) do
      delete presenter_url(@presenter)
    end

    assert_redirected_to presenters_url
  end
end
