# key: dp str dnb
# point_line: 0
# point_index: 0
# --
class TempoDNB < TempoStrategy
  def initialize
    @tempo = 170
  end
end

class VocalDNB < VocalStrategy
  def initialize
    @vocal = {
        'sample' => 'E:\hopbit\dj\samples\vocals\CaseyLipkaVocals_Mini_SP\80_C#m_OctDownVocal_01_612.wav',
        'times' => 4,
        'sample_start' => 0,
        'sample_finish' => 0.0625,
        'sleep_before' => 0,
        'sleep_after' => 16
    }
  end
end

class BacgroundDNB < BackgroundStrategy
  def initialize
    @bg = [[:cs3, 4.0, 2.0], [:fs2, 3.0, 2.0], [:a2, 4.0, 2.0], [:b2, 4.0, 2.0]] * 2
  end
end

class MelodyDNB < MelodyStrategy
  def initialize
    @melody = [[:db4, 0.5, 0.75], [:e4, 0.5, 0.75], [:db4, 0.5, 0.5]] * 3
    @melody += [[:eb4, 0.5, 0.75], [:db4, 0.5, 0.75], [:b3, 1.0, 0.5]]
    @melody *= 2
  end
end

class BeatDNB < BeatStrategy
  def initialize
    @beat = {
        'sample' => :loop_amen,
        'times' => 8,
        'stretch' => 4,
        'sleep' => 4
    }
  end
end
