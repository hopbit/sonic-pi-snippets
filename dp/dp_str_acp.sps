# key: dp str acp
# point_line: 0
# point_index: 0
# --
class TempoACapella < TempoStrategy
  def initialize
    @tempo = 80
  end
end

class VocalACapella < VocalStrategy
  def initialize
    @vocal = {
        'sample' => 'E:\hopbit\dj\samples\vocals\JoshuaDavidVocals_Mini_SP\80_F_AhhHarmonyVocal_01_621.wav',
        'times' => 4,
        'sample_start' => 0.0,
        'sample_finish' => 1.0,
        'sleep_before' => 0,
        'sleep_after' => 32
    }
  end
end

class BackgroundACapella < BackgroundStrategy
  def initialize
    @bg = nil
  end
end

class MelodyACapella < MelodyStrategy
  def initialize
    @melody = nil
  end
end

