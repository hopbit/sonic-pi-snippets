# key: dp str trk c
# point_line: 0
# point_index: 0
# --
class TrackC < Track
  def initialize(sample_path)
    @tempo = TempoACapella.new(sample_path)
    @vocal = VocalACapella.new(sample_path)
    @bg = BackgroundACapella.new(sample_path)
    @melody = MelodyACapella.new(sample_path)
    @beat = BeatACapella.new(sample_path)
  end
end
