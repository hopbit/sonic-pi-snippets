# key: dp s tempo
# point_line: 0
# point_index: 0
# --
class TempoACapella < TempoStrategy
  def initialize
    @tempo = 80
  end
end

class TempoDNB < BeatStrategy
  def initialize
    @tempo = 170
  end
end

class TempoDance < TempoStrategy
  def initialize
    @tempo = 125
  end
end
