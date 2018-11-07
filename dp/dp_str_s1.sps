# key: dp str s1
# point_line: 0
# point_index: 0
# --
# DP STR S1
class BeatACapella < BeatStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    nil
  end
end

class BeatDNB < BeatStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
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
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    {
        'sample' => :loop_industrial,
        'times' => 16,
        'stretch' => 2,
        'sleep' => 2
    }
  end
end
