# key: dp str trk f
# point_line: 0
# point_index: 0
# --
class TrackF < Track
  def initialize(sample_path)
    @tempo = TempoHouse.new(sample_path) # NEW!!!
    @vocal= VocalDance.new(sample_path)
    @bg = BackgroundDance.new(sample_path)
    @melody = MelodyDNB.new(sample_path)
    @beat = BeatHouse.new(sample_path) # NEW!!!
  end
end
