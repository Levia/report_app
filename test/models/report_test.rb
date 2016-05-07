require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  test "must have been submitted by a user" do
    report = Report.new(date: Date.today)
    assert !report.valid?, "Report has not been validated correctly"
  end
end
