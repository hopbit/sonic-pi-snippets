# key: bg1
# point_line: 3
# point_index: 0
# --
background = (scale :gs3, :minor_pentatonic)
live_loop :background do
  # stop
  # sync :metronome
  use_synth :beep
  32.times do
    play background.choose, release: 0.125, amp: 0.3, cutoff: 70
    sleep 0.25
  end
end