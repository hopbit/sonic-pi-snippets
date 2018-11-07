# key: mel nemll
# point_line: 0
# point_index: 0
# --
live_loop :melody do
  use_synth :dtri
  play melody.tick, release: 1, amp: 0.25
  sleep 0.25
end
