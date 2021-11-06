# key: dp fac 3 bit
# point_line: 0
# point_index: 0
# --
# DP FAC 3 BIT
# Our simple break bit wrapped into class

# Base class
class BeatLoop
  attr_reader :steps # amount of beats in pattern
  attr_accessor :bpm
  attr_reader :loop # pattern
  def initialize(samples_path)
    raise 'Use subclasses'
  end
end

# https://www.youtube.com/watch?v=dNP8tbDMZNE
class ImpeachThePresident < BeatLoop
  def initialize(samples_path)
    @steps = 16
    @bpm = 96
    @loop = {
        :drum_bass_hard => [0, 7, 8, 14], # KICK (stopa)
        :drum_snare_hard => [4, 12], # SNARE (werbel)
        :drum_cymbal_closed => [0, 2, 4, 6, 7, 8, 12, 14], # CLOSED HI-HAT
        :drum_cymbal_open => [10] # OPEN HI-HAT
    }
  end
end

# https://www.youtube.com/watch?v=dNP8tbDMZNE
class FunkyDrummer < BeatLoop
  def initialize(samples_path)
    @steps = 16
    @bpm = 96
    @loop = {
        :drum_bass_hard => [1, 3, 7, 11, 14], # KICK (stopa)
        :drum_snare_hard => [5, 8, 10, 12, 13, 16], # SNARE (werbel)
        :drum_cymbal_closed => [0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 15, 16], # CLOSED HI-HAT
        :drum_cymbal_open => [8, 14] # OPEN HI-HAT
    }
  end
end

# https://www.youtube.com/watch?v=sVysHOfV8CI&t=5
class BigBeat < BeatLoop
  def initialize(samples_path)
    @steps = 16
    @bpm = 127
    @loop = {
        :drum_bass_hard => [1, 4, 7, 9], # KICK (stopa)
        :drum_snare_hard => [5, 13], # SNARE (werbel)
        "#{samples_path}/clap/clap707.wav" => [5, 13], # CLAP
    }
  end
end


# https://www.attackmagazine.com/technique/beat-dissected/rolling-deep-house/
class HouseBeat < BeatLoop
  def initialize(samples_path)
    @steps = 16
    @bpm = 127
    @loop = {
        :drum_tom_lo_soft => [3, 11], # TOM
        :drum_cymbal_closed => [2, 6, 9, 10, 14], # OPEN HI-HAT
        :drum_heavy_kick => [0, 4, 8, 12], # KICK
        :perc_swash => [3, 11] # SHAKER
    }
  end
end

