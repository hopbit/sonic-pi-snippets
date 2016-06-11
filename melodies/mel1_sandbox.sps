# key: mel1 s
# point_line: 0
# point_index: 0
# --
live_loop :foo1 do
  ##| stop
  sync :beats
  use_synth :chiplead
  with_fx :wobble, phase: 0.125 do
    notes.size.times do |n|
      notes.size.times do |n|
        play notes[n], release: notes_sleeps[n], amp: 0.5
        sleep notes_sleeps[n]
      end
    end
  end
end
