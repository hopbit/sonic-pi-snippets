# key: dp s bg
# point_line: 0
# point_index: 0
# --
class BackgroundACapella < BackgroundStrategy
  def initialize
    @bg = nil
  end
end

class BacgroundDNB < BackgroundStrategy
  def initialize
    @bg = [[:cs3, 4.0, 2.0], [:fs2, 3.0, 2.0], [:a2, 4.0, 2.0], [:b2, 4.0, 2.0]] * 2
  end
end

class BackgroundDance < BackgroundStrategy
  def initialize
    @bg = [[[:cs4, :e4, :db4], 0.5, 1.0]] * 32
  end
end