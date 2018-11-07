# key: dp str trk f
# point_line: 0
# point_index: 0
# --
class TrackF < Track
  def initialize
    @tempo = TempoHouse.new
    @vocal = VocalDance.new
    @bg = BackgroundDance.new
    @melody = MelodyDNB.new
    @beat = BeatHouse.new
  end
end
