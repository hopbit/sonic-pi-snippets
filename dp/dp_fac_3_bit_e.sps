# key: dp fac 3 bit e
# point_line: 0
# point_index: 0
# --
# DP FAC 3 BIT E
# https://www.attackmagazine.com/technique/beat-dissected/rolling-deep-house/
class HouseBeat < BeatLoop
  def initialize(samples_path)
    @steps = 16
    @bpm = 127
    @loop = {
        :drum_tom_lo_soft => [3,11], # TOM
        :drum_cymbal_closed => [2, 6, 9, 10, 14], # OPEN HI-HAT
        :drum_heavy_kick => [0, 4, 8, 12], # KICK
        :perc_swash => [3, 11] # SHAKER
    }
  end
end

