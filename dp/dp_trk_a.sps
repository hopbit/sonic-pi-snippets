# key: dp trk a
# point_line: 0
# point_index: 0
# --
class TrackA < Track
  def initialize
    @tempo = TempoDNB.new
    @vocal = VocalDNB.new
    @bg = BackgroundDNB.new
    @melody = MelodyDNB.new
    @beat = BeatDNB.new
  end
end
