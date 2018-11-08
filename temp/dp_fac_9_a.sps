# key: dp fac 9 a
# point_line: 0
# point_index: 0
# --
# DP FAC 9 A: Beat Factory Method implementation

class AbstractBeatFactory

  def initialize(samples_path)
    raise 'Use one of sublasses'
    @samples_path
  end

  def createTempo(beat_name)
    if tempo_name == 'moderato'
      moderato_bf = ModeratoBeatFactory.new(@samples_path)
      beat = moderato_bf.createBeat(tempo_name)
    elsif tempo_name == 'allegro'
      allegro_bf = AllegroBeatFactory.new(@samples_path)
      beat = allegro_bf.createBeat(tempo_name)
    elsif tempo_name == 'presto'
      presto_bf = PrestoBeatFactory.new(@samples_path)
      beat = presto_bf.createBeat(tempo_name)
    end
  end
end

