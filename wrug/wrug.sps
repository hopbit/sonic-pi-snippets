# key: wrug
# point_line: 0
# point_index: 0
# --
# WRUG 2016-04-20 -----------------------------------------------
# 3 żywe pętle bazujące na prezentacji Sama Aarona z TEDx

set_volume! 1
use_bpm 125

live_loop :beats do
  8.times do
    sample :bd_haus, amp: 0.5
    sleep 1
  end
end

live_loop :sample_loop do
  stop
  sync :metronome
  4.times do
    sample :loop_industrial, beat_stretch: 2, amp: 0.2
    sleep 2
  end
end

notes = (scale :gs3, :minor_pentatonic)
live_loop :background do
  stop
  sync :metronome
  use_synth :beep
  32.times do
    play notes.choose, release: 0.125, amp: 0.3, cutoff: 70
    sleep 0.25
  end
end

# sweet child o' mine (16 beats)
# notes = [:cs4,:cs5,:gs4,:fs4,:fs5, :gs4, :f5, :gs4]
# notes += [:ds4,:cs5,:gs4,:fs4,:fs5, :gs4, :f5, :gs4]
# notes_sleeps = [0.25] * 16
live_loop :melody do
  ##| stop
  sync :metronome
  use_synth :piano # :chiplead
  1.times do | n |
    play notes[n], amp: 0.35
    sleep 0.5
  end
end
# FX!!!!