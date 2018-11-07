# key: dp fac 3 bit a
# point_line: 0
# point_index: 0
# --
# DP FAC 3 BIT A
# Our simple break bit wrapped into class

# Base class
class BeatLoop
  attr_reader :steps # amount of beats in pattern
  attr_reader :bpm
  attr_reader :loop
  def initialize(samples_path)
    raise 'Use subclasses'
  end
end

