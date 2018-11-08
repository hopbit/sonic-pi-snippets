# key: dp fac 9
# point_line: 0
# point_index: 0
# --
# DP FAC 8 Let's try to create factories that produces beats with different tempo styles
set_volume! 1

arg = ['Impeach The President', 'moderato']
# arg = ['Funky Drummer','allegro']
# arg = ['Big Beat','presto']
# arg = ['House Beat','moderato']

tempo_factory = SimpleTempoFactory.new(ext_samples_path)
  moderato_bf = ModeratoBeatFactory.new(ext_samples_path)
  beat = moderato_bf.createBeat(arg[0])
elsif tempo_name == 'allegro'
  allegro_bf = AllegroBeatFactory.new(ext_samples_path)
  beat = allegro_bf.createBeat(arg[0])
elsif tempo_name == 'presto'
  presto_bf = PrestoBeatFactory.new(ext_samples_path)
  beat = presto_bf.createBeat(arg[0])
end

live_loop :beat do
  use_bpm beat.bpm
  beat.steps.times do |step|
    beat.loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? step
    end
    sleep 0.25
  end
end
