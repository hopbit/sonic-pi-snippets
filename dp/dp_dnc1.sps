# key: dp dnc1
# point_line: 0
# point_index: 0
# --
class DanceTrack < Track

  attr_reader :tempo # bpm
  attr_reader :vocal
  attr_reader :bg # background, accompaniament
  attr_reader :melody
  attr_reader :beat

  def initialize
    @tempo = 125
    @vocal = {
        'sample' => 'E:\hopbit\dj\samples\vocals\MaleHouseVocals_Freebie_SP\116_D#_Harmony_B_01_SP.wav',
        'times' => 4,
        'sample_start' => 0.75,
        'sample_finish' => 1.0,
        'sleep_before' => 0,
        'sleep_after' => 8
    }
    @bg = [[[:cs4, :e4, :db4], 0.5, 1.0]] * 32
    @melody = [[:gs4, 0.5, 0.5], [:cs5, 0.5, 0.5], [:gs5, 0.25, 0.25], [:g4, 0.25, 0.25], [:cs5, 0.25, 0.25]] # 1 tact
    @melody += [[nil, 0.25, 0.25], [:gs5, 0.5, 0.5], [:e5, 0.5, 0.5], [:ds5, 0.5, 0.5], [:cs5, 0.5, 0.5]]
    @melody += [[:a4, 0.5, 0.5], [:cs5, 0.5, 0.5], [:e5, 0.25, 0.25], [:b4, 0.25, 0.25], [:ds5, 0.25, 0.25]] # 2 tact
    @melody += [[nil, 0.25, 0.25], [:fs5, 0.5, 0.5], [:e5, 0.5, 0.5], [:ds5, 0.5, 0.5], [:cs5, 0.5, 0.5]]
    @melody *= 2
    @beat = {
        'sample' => :loop_industrial,
        'times' => 16,
        'stretch' => 2,
        'sleep' => 2
    }
  end
end
