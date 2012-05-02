require 'test_helper'

class DateTimeFormatsTest < ActiveSupport::TestCase
  test "date time formats" do
    assert_equal "01-01-2012", Time.new(2012, 1, 1).to_s(:dash)
    assert_equal "01/01/2012", Time.new(2012, 1, 1).to_s(:slash)
    assert_equal "Sunday January 01, 2012", Time.new(2012, 1, 1).to_s(:full)
  end

  test "use date time formats in Rails app" do
    assert_equal "new format", Time.now.to_s(:new_format)
  end

  test "Rails app date time formats override default formats provided with Gem" do
    assert_equal "overrides format", Time.now.to_s(:year)
  end
end
