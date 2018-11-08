# key: dp str s0
# point_line: 0
# point_index: 0
# --
# DP STR S0
class IStrategy
  def initialize(sample_path)
    raise "Use subclasses"
  end

  def get
    raise "Use subclasses"
  end
end

class BeatStrategy < IStrategy
  def initialize(sample_path)
  end
end

class BackgroundStrategy < IStrategy
  def initialize(sample_path)
  end
end

class MelodyStrategy < IStrategy
  def initialize(sample_path)
  end
end

class TempoStrategy < IStrategy
  def initialize(sample_path)
  end
end

class VocalStrategy < IStrategy
  def initialize(sample_path)
  end
end
