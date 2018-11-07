# key: dp fac 3 bit c
# point_line: 0
# point_index: 0
# --
# DP FAC 3 BIT C
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
