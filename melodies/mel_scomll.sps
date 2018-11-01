# key: mel scomll
# point_line: 2
# point_index: 0
# --
live_loop :foo do
  # use_synth :piano
  4.times do |n|
    play notes[n]
    sleep notes_sleeps[n]
  end
end
