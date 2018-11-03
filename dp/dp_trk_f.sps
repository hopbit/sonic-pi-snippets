# key: dp trk f
# point_line: 0
# point_index: 0
# --
class TrackG < Track
  def initialize
    @tempo = TempoHouse.new
    @vocal = VocalHouse.new
    @bg = BackgroundDance.new
    @melody = MelodyDNB.new
    @beat = BeatHouse.new
  end
end