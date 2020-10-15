require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
    @link = links(:one)
  end

  test "should get index" do
    get :index, params: { report_id: @report }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { report_id: @report }
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post :create, params: { report_id: @report, link: @link.attributes }
    end

    assert_redirected_to report_link_path(@report, Link.last)
  end

  test "should show link" do
    get :show, params: { report_id: @report, id: @link }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { report_id: @report, id: @link }
    assert_response :success
  end

  test "should update link" do
    put :update, params: { report_id: @report, id: @link, link: @link.attributes }
    assert_redirected_to report_link_path(@report, Link.last)
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, params: { report_id: @report, id: @link }
    end

    assert_redirected_to report_links_path(@report)
  end
end
