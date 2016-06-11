# key: mel2 s
# point_line: 0
# point_index: 0
# --
comment do
  # use_synth :piano
  live_loop :foo2 do
    play theme.tick, relese: 1, amp: 0.1
    sleep 0.25
  end
end
