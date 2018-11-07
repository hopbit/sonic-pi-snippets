# key: dp str trk d
# point_line: 0
# point_index: 0
# --
class TrackD < Track
  def initialize(sample_path)
    @tempo = TempoDance.new(sample_path)
    @vocal = VocalDNB.new(sample_path)
    @bg = BackgroundDNB.new(sample_path)
    @melody = MelodyDNB.new(sample_path)
    @beat = BeatDance.new(sample_path)
  end
end
