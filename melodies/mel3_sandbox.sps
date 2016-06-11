# key: mel3 s
# point_line: 0
# point_index: 0
# --
# use_synth :piano
live_loop :foo do
  play notes.tick, relese: 1, amp: 0.1
  sleep 0.25
end

# live_loop :foo1 do
#   notes.size.times do |n|
#     play notes[n]
#     sleep notes_sleeps[n]
#   end
# end