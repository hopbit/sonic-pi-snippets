# key: dp str trk 1
# point_line: 0
# point_index: 0
# --
# DP STR TRK 1
class Track1 < Track
  def initialize(samples_path)
    @tempo = 170
    @vocal = {
        'sample' => "#{samples_path}/vocals/CaseyLipkaVocals_Mini_SP/80_C#m_OctDownVocal_01_612.wav",
        'times' => 4,
        'sample_start' => 0,
        'sample_finish' => 0.0625,
        'sleep_before' => 0,
        'sleep_after' => 16
    }
    @bg = [[:cs3, 4.0, 2.0], [:fs2, 3.0, 2.0], [:a2, 4.0, 2.0], [:b2, 4.0, 2.0]] * 2
    @melody = [[:db4, 0.5, 0.75], [:e4, 0.5, 0.75], [:db4, 0.5, 0.5]] * 3
    @melody += [[:eb4, 0.5, 0.75], [:db4, 0.5, 0.75], [:b3, 1.0, 0.5]]
    @melody *= 2
    @beat = {
        'sample' => :loop_amen,
        'times' => 8,
        'stretch' => 4,
        'sleep' => 4
    }
  end
end
