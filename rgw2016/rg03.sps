# key: rg3
# point_line: 0
# point_index: 0
# --
live_loop :background do
  sync :loop_amen
  ##| stop
  use_bpm 170
  use_synth :beep
  notes = (scale :gs3, :minor_pentatonic)
  # with_fx :echo do
    8.times  do
      play notes.choose, amp: 0.6
      sleep 0.5
    end
  # end
end