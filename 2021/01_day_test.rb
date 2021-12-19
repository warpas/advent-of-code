require 'minitest/autorun'
require_relative '01_day'

class DepthMeasureTest < Minitest::Test
  def test_initial_data
    measurements = "199
    200
    208
    210
    200
    207
    240
    269
    260
    263"

    increase_count = DepthMeasure.increases(measurements)
    assert_equal increase_count, 7
  end
end
