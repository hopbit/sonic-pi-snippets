# key: dp fac 7 a
# point_line: 0
# point_index: 0
# --
# DP FAC 7 A: Add PrestoBeatFactory

# BPM around 168 – 199
class PrestoBeatFactory < BeatFactoryMethod

  def initialize(samples_path)
    @samples_path = samples_path
    @tempo = 175
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