# key: dp str s2
# point_line: 0
# point_index: 0
# --
# # DP STR S2
class BackgroundACapella < BackgroundStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    nil
  end
end

class BackgroundDNB < BackgroundStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    [[:cs3, 4.0, 2.0], [:fs2, 3.0, 2.0], [:a2, 4.0, 2.0], [:b2, 4.0, 2.0]] * 2
  end
end

class BackgroundDance < BackgroundStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    [[[:cs4, :e4, :db4], 0.5, 1.0]] * 32
  end
end