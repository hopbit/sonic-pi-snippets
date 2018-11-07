# key: dp str trk g
# point_line: 0
# point_index: 0
# --
class TrackG < Track
  def initialize
    @tempo = TempoHouse.new
    @vocal = VocalHouse.new # house but wi
    @bg = BackgroundDance.new
    @melody = MelodyDNB.new
    @beat = BeatHouse.new
  end
end