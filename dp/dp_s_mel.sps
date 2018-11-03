# key: dp s mel
# point_line: 0
# point_index: 0
# --
class MelodyACapella < MelodyStrategy
  def initialize
    @melody = nil
  end
end

class MelodyDNB < MelodyStrategy
  def initialize
    @melody = [[:db4, 0.5, 0.75], [:e4, 0.5, 0.75], [:db4, 0.5, 0.5]] * 3
    @melody += [[:eb4, 0.5, 0.75], [:db4, 0.5, 0.75], [:b3, 1.0, 0.5]]
    @melody *= 2
  end
end

class MelodyDance < MelodyStrategy
  def intitialize
    @melody = [[:gs4, 0.5, 0.25], [:cs5, 0.25, 0.25], [:gs5, 0.125, 0.125], [:g4, 0.125, 0.125], [:cs5, 0.125, 0.125]] # 1 tact
    @melody += [[nil, 0.125, 0.125], [:gs5, 0.25, 0.25], [:e5, 0.25, 0.25], [:ds5, 0.25, 0.25], [:cs5, 0.25, 0.25]]
    @melody += [[:a4, 0.25, 0.25], [:cs5, 0.25, 0.25], [:e5, 0.125, 0.125], [:b4, 0.125, 0.125], [:ds5, 0.125, 0.125]] # 2 tact
    @melody += [[nil, 0.125, 0.125], [:fs5, 0.25, 0.25], [:e5, 0.25, 0.25], [:ds5, 0.25, 0.25], [:cs5, 0.25, 0.25]]
    @melody *= 4
  end
end