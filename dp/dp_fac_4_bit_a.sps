# key: dp fac 4 bit a
# point_line: 44
# point_index: 0
# --
# DP FAC 4 BIT A
# Base Class
class BeatLoop
  attr_reader :steps # amount of beats in pattern
  attr_reader :loop
end

# https://www.youtube.com/watch?v=dNP8tbDMZNE
class ImpeachThePresident < BeatLoop
  def initialize
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
  def initialize
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


