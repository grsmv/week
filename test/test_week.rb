require "test/unit"
require "week"

class WeekTest < Test::Unit::TestCase
  def setup
  	@standard_output = []
  	(25..31).each do |day|
  	  @standard_output << Time.mktime(2011, 12, day)
  	end
  end

  def test_001_returning_array_count
    assert_equal 7, week(2011, 52).size
  end

  def test_002_returning_array_contents
  	assert_equal @standard_output, week(2011, 52)
  end

  def test_003_monday_as_first_day_of_the_week
  	assert_equal 1, week(2011, 8, 1)[0].wday
  end

  def test_004_date_monkey_patching
  	assert_equal @standard_output, Date.new(2011, 12, 25).week
  end

  def test_005_date_monkey_patching_wide_form
  	day = Date.new(2011, 12, 25)
  	assert_equal @standard_output, day.week
  end
end