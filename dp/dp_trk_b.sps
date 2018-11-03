# key: dp trk b
# point_line: 0
# point_index: 0
# --
class TrackB < Track
  def initialize
    @tempo = TempoDance.new
    @vocal = VocalDance.new
    @bg = BackgroundDance.new
    @melody = MelodyDance.new
    @beat = BeatDance.new
  end
end
