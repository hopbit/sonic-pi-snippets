# key: dp str trk d
# point_line: 0
# point_index: 0
# --
class TrackD < Track
  def initialize
    @tempo = TempoDance.new
    @vocal = VocalDNB.new
    @bg = BackgroundDNB.new
    @melody = MelodyDNB.new
    @beat = BeatDance.new
  end
end
