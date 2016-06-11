# key: rg5
# point_line: 0
# point_index: 0
# --
# metallica - nothing else matters (24 beats)
live_loop :foo do
  use_synth :piano
  use_bpm 85
  nem_notes = (ring :e5, :r, :g5, :r, :b5, :r, :e6, :r, :b5, :r, :g5, :r) * 2
# nem_notes += (ring :b6, :r, :b6, :r, :r, :r, :b6, :r, :e6, :r, :b6, :r)
# nem_notes += (ring :c7, :r, :b6, :r, :c7, :r, :b6, :c7)
  play_pattern_timed nem_notes, [0.25], decay: 1, amp: 0.1
end
