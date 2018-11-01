# key: mel cjll
# point_line: 0
# point_index: 0
# --
live_loop :melody do
  ##| stop
  ##| sync :metronome
  use_bpm 125
  use_synth :chiplead
  with_fx :wobble, phase: 0.125 do
    notes.size.times do |n|
      notes.size.times do |n|
        play notes[n][0], release: notes[n][1], amp: 0.5
        sleep notes[n][2]
      end
    end
  end
end
