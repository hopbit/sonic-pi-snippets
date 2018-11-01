# key: mel sofll
# point_line: 2
# point_index: 4
# --
live_loop :melody do
  stop
  sync :metronome
  use_bpm 170
  use_synth :piano
  notes.size.times do |n|
    play notes[n][0], decay: notes[n][1]
    sleep notes[n][2]*2
  end
end
