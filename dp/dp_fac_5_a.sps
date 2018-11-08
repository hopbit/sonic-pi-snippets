# key: dp fac 5 a
# point_line: 0
# point_index: 0
# --
# DP FAC 5 A: Simple Beat Factory implementation

class SimpleBeatFactory

  def initialize(samples_path)
    @samples_path = samples_path

  end

  def createBeat(beat_name)
    if beat_name == 'Impeach The President'
      ImpeachThePresident.new(@samples_path)
    elsif beat_name == 'Funky Drummer'
      FunkyDrummer.new(@samples_path)
    elsif beat_name == 'Big Beat'
      BigBeat.new(@samples_path)
    elsif beat_name == 'House Beat'
      HouseBeat.new(@samples_path)
    else
      nil
    end
  end
end
