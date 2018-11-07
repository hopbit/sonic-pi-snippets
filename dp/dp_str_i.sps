# key: dp str i
# point_line: 0
# point_index: 0
# --
class IStrategy
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