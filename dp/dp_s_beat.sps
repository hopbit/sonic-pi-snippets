# key: dp s beat
# point_line: 0
# point_index: 0
# --
class BeatACapella < BeatStrategy
  def initialize
    @beat = nil
  end
end

class BeatDNB < BeatStrategy
  def initialize
    @beat = {
        'sample' => :loop_amen,
        'times' => 8,
        'stretch' => 4,
        'sleep' => 4
    }
  end
end

class BeatDance < BeatStrategy
  def intitialize
    @beat = {
        'sample' => :loop_industrial,
        'times' => 16,
        'stretch' => 2,
        'sleep' => 2
    }
  end
end
