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
end
