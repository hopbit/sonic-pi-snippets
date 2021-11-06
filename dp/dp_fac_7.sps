# key: dp fac 7
# point_line: 0
# point_index: 0
# --
# DP FAC 7: Let's try to create factories that produces beats with different tempo styles
set_volume! 1

arg = 'Impeach The President'
# arg = 'Funky Drummer'
# arg = 'Big Beat'
# arg = 'House Beat'

# moderato_bf = ModeratoBeatFactory.new(ext_samples_path) # BPM 88-92
# beat = moderato_bf.createBeat(arg)

# allegro_bf = AllegroBeatFactory.new(ext_samples_path) # BPM 120-138
# beat = allegro_bf.createBeat(arg)

presto_bf = PrestoBeatFactory.new(ext_samples_path) # BPM 168-199
beat = presto_bf.createBeat(arg)

live_loop :beat do
  use_bpm beat.bpm
  beat.steps.times do |step|
    beat.loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? step
    end
    sleep 0.25
  end
end
