# key: dp acp1
# point_line: 0
# point_index: 0
# --
class Track3 < Track

  attr_reader :tempo # bpm
  attr_reader :vocal
  attr_reader :bg # background, accompaniament
  attr_reader :melody
  attr_reader :beat

  def initialize
    @tempo = 80
    @vocal = {
        'sample' => 'E:\hopbit\dj\samples\vocals\JoshuaDavidVocals_Mini_SP\80_F_AhhHarmonyVocal_01_621.wav',
        'times' => 4,
        'sample_start' => 0.0,
        'sample_finish' => 1.0,
        'sleep_before' => 0,
        'sleep_after' => 32
    }
    @bg = nil
    @melody = nil
    @beat = nil
  end
end
