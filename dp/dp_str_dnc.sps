# key: dp str dnc
# point_line: 0
# point_index: 0
# --
class TempoDance < TempoStrategy
  def initialize
    @tempo = 125
  end
end

class VocalDance < VocalStrategy
  def initialize
    @vocal = {
        'sample' => 'E:\hopbit\dj\samples\vocals\MaleHouseVocals_Freebie_SP\116_D#_Harmony_B_01_SP.wav',
        'times' => 4,
        'sample_start' => 0.75,
        'sample_finish' => 1.0,
        'sleep_before' => 0,
        'sleep_after' => 8
    }
  end
end

class BackgroundDance < BackgroundStrategy
  def initialize
    @bg = [[[:cs4, :e4, :db4], 0.5, 1.0]] * 32
  end
end

class MelodyDance < MelodyStrategy
  def intitialize
    @melody = [[:gs4, 0.5, 0.25], [:cs5, 0.25, 0.25], [:gs5, 0.125, 0.125], [:g4, 0.125, 0.125], [:cs5, 0.125, 0.125]] # 1 tact
    @melody += [[nil, 0.125, 0.125], [:gs5, 0.25, 0.25], [:e5, 0.25, 0.25], [:ds5, 0.25, 0.25], [:cs5, 0.25, 0.25]]
    @melody += [[:a4, 0.25, 0.25], [:cs5, 0.25, 0.25], [:e5, 0.125, 0.125], [:b4, 0.125, 0.125], [:ds5, 0.125, 0.125]] # 2 tact
    @melody += [[nil, 0.125, 0.125], [:fs5, 0.25, 0.25], [:e5, 0.25, 0.25], [:ds5, 0.25, 0.25], [:cs5, 0.25, 0.25]]
    @melody *= 4
  end
end

class BeatDance < BeatStrategy
  def intitialize
    @beat = {
        'sample' => :loop_industrial,
        'times' => 16,
        'stretch' => 2,
        'sleep' => 2
    }
  end
end