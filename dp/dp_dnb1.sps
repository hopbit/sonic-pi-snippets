# key: dp dnb1
# point_line: 0
# point_index: 0
# --
class DNBTrack < Track

  attr_reader :tempo # bpm
  attr_reader :vocal
  attr_reader :background # accompaniament
  attr_reader :melody
  attr_reader :beats

  def initialize
    # some setup here
  end

end
