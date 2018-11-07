# key: dp str trk b
# point_line: 0
# point_index: 0
# --
class TrackB < Track
  def initialize(sample_path)
    @tempo = TempoDance.new(sample_path)
    @vocal= VocalDance.new(sample_path)
    @bg = BackgroundDance.new(sample_path)
    @melody = MelodyDance.new(sample_path)
    @beat = BeatDance.new(sample_path)
  end
end
