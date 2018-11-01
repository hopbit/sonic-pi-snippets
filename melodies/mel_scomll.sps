# key: mel scomll
# point_line: 2
# point_index: 0
# --
live_loop :melody do
  use_synth :piano
  16.times do |n|
    play notes[n]
    sleep notes_sleeps[n]
  end
end
