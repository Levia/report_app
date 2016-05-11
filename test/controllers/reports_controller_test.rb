require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  def setup
    @report = reports(:one)
    @user = users(:ferdinando)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil :reports
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show, id: @report
    assert_response :success
  end

  test "should create new report" do
    assert_difference('Report.count') do
      post :create, report: { date: Date.today }
    end
    assert_redirected_to report_path(assigns(:report))
  end

  test "should get edit" do
    get :edit, id: @report.id
    assert_response :success
  end

  test "should update report" do
    put :update, id: @report.id, report: {date: Date.today}
    assert_redirected_to report_path(@report)
  end

  test "should destroy a report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report.id
    end
    assert_redirected_to reports_path
  end
end
