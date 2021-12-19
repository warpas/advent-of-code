class DepthMeasure
  def self.increases(input)
    new(input).increase_count
  end

  def self.group_increases(input)
    new(input).group_increase_count
  end

  def initialize(input)
    @measurements = input.lines.map(&:to_i)
  end

  def increase_count(array: @measurements)
    increases = 0
    previous = nil
    array.each do |x|
      increases += 1 if !previous.nil? && x > previous
      previous = x
    end

    increases
  end

  def group_increase_count
    increase_count(array: threes)
  end

  def threes
    groups_of_three = []
    last_three = []
    @measurements.each do |x|
      last_three << x
      if last_three.length == 3
        groups_of_three << last_three.sum
        last_three = last_three[1..2]
      end
    end
    groups_of_three
  end
end
