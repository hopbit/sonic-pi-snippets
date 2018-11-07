# key: dp str trk a
# point_line: 0
# point_index: 0
# --
class TrackA < Track
  def initialize(sample_path)
    @tempo = TempoDnb.new(sample_path)
    @vocal = VocalDNB.new(sample_path)
    @bg = BackgroundDNB.new(sample_path)
    @melody = MelodyDNB.new(sample_path)
    @beat = BeatDNB.new(sample_path)
  end
end
