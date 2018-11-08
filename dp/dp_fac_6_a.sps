# key: dp fac 6 a
# point_line: 0
# point_index: 0
# --
# DP FAC 6 A: Beat Factory Method implementation

class BeatFactoryMethod

  def initialize(samples_path)
    raise 'Use one of sublasses'
  end

  def createBeat(beat_name)
    rais 'Unimplemented method'
  end
end

# BPM 88-92
class ModeratoBeatFactory < BeatFactoryMethod

  def initialize(samples_path)
    @samples_path = samples_path
    @tempo = 92
  end

  def createBeat(beat_name)
    beat = nil
    if beat_name == 'Impeach The President'
      beat = ImpeachThePresident.new(@samples_path)
    elsif beat_name == 'Funky Drummer'
      beat = FunkyDrummer.new(@samples_path)
    elsif beat_name == 'Big Beat'
      beat = BigBeat.new(@samples_path)
    elsif beat_name == 'House Beat'
      beat = HouseBeat.new(@samples_path)
    end
    beat.bpm = @tempo
    beat
  end
end

# BPM around 120 – 138
class AllegroBeatFactory < BeatFactoryMethod

  def initialize(samples_path)
    @samples_path = samples_path
    @tempo = 125
  end

  def createBeat(beat_name)
    beat = nil
    if beat_name == 'Impeach The President'
      beat = ImpeachThePresident.new(@samples_path)
    elsif beat_name == 'Funky Drummer'
      beat = FunkyDrummer.new(@samples_path)
    elsif beat_name == 'Big Beat'
      beat = BigBeat.new(@samples_path)
    elsif beat_name == 'House Beat'
      beat = HouseBeat.new(@samples_path)
    end
    beat.bpm = @tempo
    beat
  end
end