class DepthMeasure
  def self.increases(input)
    new(input).increase_count
  end

  def initialize(input)
    @measurements = input.lines.map(&:to_i)
  end

  def increase_count
    increases = 0
    previous = nil
    @measurements.each do |x|
      increases += 1 if !previous.nil? && x > previous
      previous = x
    end

    increases
  end
end
