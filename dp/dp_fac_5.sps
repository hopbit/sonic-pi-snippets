# key: dp fac 5
# point_line: 0
# point_index: 0
# --
# DP FAC 5:
# Let's try to extract the logic of creating Beats
# to simple factory
set_volume! 1

arg = 'Impeach The President'
# arg = 'Funky Drummer'
# arg = 'Big Beat'
# arg = 'House Beat'

beat_factory = SimpleBeatFactory.new(ext_samples_path)
beat = beat_factory.createBeat(arg)

live_loop :beat do
  use_bpm beat.bpm
  beat.steps.times do |step|
    beat.loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? step
    end
    sleep 0.25
  end
end
