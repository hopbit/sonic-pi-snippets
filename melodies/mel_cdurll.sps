# key: mel cdurll
# point_line: 0
# point_index: 0
# --
live_loop :mel_cdur_ll do
  # use_synth :piano
  play notes.tick, relese: 1, amp: 0.1
  sleep 0.25
end

# TBC....
# live_loop :foo1 do
#   notes.size.times do |n|
#     play notes[n]
#     sleep notes_sleeps[n]
#   end
# end