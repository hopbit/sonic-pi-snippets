# key: dp trk c
# point_line: 0
# point_index: 0
# --
class TrackC < Track
  def initialize
    @tempo = TempoACapella.new
    @vocal = VocalACapella.new
    @bg = BackgroundACapella.new
    @melody = MelodyACapella.new
    @beat = BeatACapella.new
  end
end
