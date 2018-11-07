# key: dp str trk a
# point_line: 0
# point_index: 0
# --
class TrackA < Track
  def initialize(samples_path)
    @tempo = TempoDnb.new(samples_path)
    @vocal = VocalDNB.new(samples_path)
    @bg = BackgroundDNB.new(samples_path)
    @melody = MelodyDNB.new(samples_path)
    @beat = BeatDNB.new(samples_path)
  end
end
