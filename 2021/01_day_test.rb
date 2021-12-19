require 'minitest/autorun'
require_relative '01_day'

class DepthMeasureTest < Minitest::Test
  INITIAL_MEASUREMENTS = "199
  200
  208
  210
  200
  207
  240
  269
  260
  263"

  def test_single_increases_for_initial_data
    increase_count = DepthMeasure.increases(INITIAL_MEASUREMENTS)
    assert_equal increase_count, 7
  end

  def test_group_increases_for_initial_data
    group_increase_count = DepthMeasure.group_increases(INITIAL_MEASUREMENTS)
    assert_equal group_increase_count, 5
  end
end
