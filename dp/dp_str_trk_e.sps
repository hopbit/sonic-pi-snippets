# key: dp str trk e
# point_line: 0
# point_index: 0
# --
class TrackE < Track
  def initialize
    @tempo = TempoDnb.new
    @vocal = VocalACapella.new
    @bg = BackgroundDance.new
    @melody = MelodyDNB.new
    @beat = BeatACapella.new
  end
end
