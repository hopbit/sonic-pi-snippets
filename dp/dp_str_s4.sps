# key: dp str s4
# point_line: 0
# point_index: 0
# --
# # DP STR S4
class TempoACapella < TempoStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    80
  end
end

class TempoDnb < TempoStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    170
  end
end

class TempoDance < TempoStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    132
  end
end
