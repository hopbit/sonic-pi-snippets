# key: dp str s0
# point_line: 0
# point_index: 0
# --
class IStrategy
  def initialize(sample_path)
    raise "Use subclasses"
  end
  def get
    raise "Use subclasses"
  end
end

class BeatStrategy < IStrategy
end

class BackgroundStrategy < IStrategy
end

class MelodyStrategy < IStrategy
end

class TempoStrategy < IStrategy
end

class VocalStrategy < IStrategy
end
