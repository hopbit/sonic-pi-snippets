# key: dp str s beat
# point_line: 0
# point_index: 0
# --
class BeatACapella < BeatStrategy
  def get
    nil
  end
end

class BeatDNB < BeatStrategy
  def get
    {
        'sample' => :loop_amen,
        'times' => 8,
        'stretch' => 4,
        'sleep' => 4
    }
  end
end

class BeatDance < BeatStrategy
  def get
    {
        'sample' => :loop_industrial,
        'times' => 16,
        'stretch' => 2,
        'sleep' => 2
    }
  end
end
