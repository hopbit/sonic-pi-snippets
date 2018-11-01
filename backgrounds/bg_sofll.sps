# key: bg sofll
# point_line: 4
# point_index: 0
# --
live_loop :background do
  # stop
  # use_bpm: 96
  # sync :melody
  use_synth :piano
  background.size.times do |n|
    play background[n][0], sustain: background[n][1]
    sleep background[n][2]
  end
end