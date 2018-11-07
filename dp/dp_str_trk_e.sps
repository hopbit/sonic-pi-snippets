# key: dp str trk e
# point_line: 0
# point_index: 0
# --
class TrackE < Track
  def initialize(sample_path)
    @tempo = TempoDnb.new(sample_path)
    @vocal = VocalACapella.new(sample_path)
    @bg = BackgroundDance.new(sample_path)
    @melody = MelodyDNB.new(sample_path)
    @beat = BeatACapella.new(sample_path)
  end
end
