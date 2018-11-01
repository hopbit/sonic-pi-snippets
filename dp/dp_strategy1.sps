# key: dp strategy1
# point_line: 0
# point_index: 0
# --
# Let's start with simple house live loop
set_volume! 1
use_bpm 125

notes = (scale :gs3, :minor_pentatonic) # => sweet child o' mine
# sweet child o' mine (16 metro)
# notes = [:cs4,:cs5,:gs4,:fs4,:fs5, :gs4, :f5, :gs4]
# notes += [:ds4,:cs5,:gs4,:fs4,:fs5, :gs4, :f5, :gs4]
# notes_sleeps = [0.25] * 16

live_loop :metro do
  8.times do
    sample :bd_haus, amp: 0.5
    sleep 1
  end
end

live_loop :sample_loop do
  stop
  sync :metro
  4.times do
    sample :loop_industrial, beat_stretch: 2, amp: 0.2
    sleep 2
  end
end


live_loop :background do
  stop
  sync :metro
  use_synth :beep
  32.times do
    play notes.choose, release: 0.125, amp: 0.3, cutoff: 70
    sleep 0.25
  end
end

live_loop :melody do
  ##| stop
  sync :metro
  use_synth :piano # :chiplead
  1.times do | n |
    play notes[n], amp: 0.35
    sleep 0.5
  end
end
# FX!!!!