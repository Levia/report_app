require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should respond to reports" do
    user = users(:ferdinando)

    assert_respond_to user, :reports
  end
end
