# key: dp str trk g
# point_line: 0
# point_index: 0
# --
class TrackG < Track
  def initialize(sample_path)
    @tempo = TempoHouse.new(sample_path)
    @vocal = VocalHouse.new(sample_path) # NEW!!!
    @bg = BackgroundDance.new(sample_path)
    @melody = MelodyDNB.new(sample_path)
    @beat = BeatHouse.new(sample_path)
  end
end