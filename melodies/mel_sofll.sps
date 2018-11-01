# key: mel sofll
# point_line: 2
# point_index: 4
# --

live_loop :melody do
  use_synth :piano
  notes.size.times do |n|
    play notes[n][0], release: notes[n][1]
    sleep notes[n][2]
  end
end
