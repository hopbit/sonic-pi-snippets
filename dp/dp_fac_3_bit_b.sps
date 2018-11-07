# key: dp fac 3 bit b
# point_line: 0
# point_index: 0
# --
# DP FAC 3 BIT B
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

