# key: dp fac 3 bit a
# point_line: 0
# point_index: 0
# --
# DP FAC 3 BIT A
# Our simple break bit wrapped into class

# Impeach the president: https://www.youtube.com/watch?v=wqbEsS5kFb8
class BeatLoop

  attr_reader :steps # amount of beats in pattern
  attr_reader :loop

  def initialize
    @steps = 16
    @loop = {
        :drum_bass_hard => [0, 7, 8, 14], # KICK (stopa)
        :drum_snare_hard => [4, 12], # SNARE (werbel)
        :drum_cymbal_closed => [0, 2, 4, 6, 7, 8, 12, 14], # CLOSED HI-HAT
        :drum_cymbal_open => [10] # OPEN HI-HAT
    }
  end
end
