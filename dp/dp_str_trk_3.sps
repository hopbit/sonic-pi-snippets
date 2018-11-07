# key: dp str trk 3
# point_line: 0
# point_index: 0
# --
class Track3 < Track
  def initialize(samples_path)
    @tempo = 80
    @vocal = {
        'sample' => "#{samples_path}/vocals/JoshuaDavidVocals_Mini_SP/80_F_AhhHarmonyVocal_01_621.wav",
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
