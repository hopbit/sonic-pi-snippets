# key: dp obs 0
# point_line: 0
# point_index: 0
# --
# DP OBS 0
set_volume! 1

live_loop :metronome do
  use_bpm 46
  puts "---> Bar: #{tick} <---"
  16.times do |b|
    puts "# Beat: #{b}"
    ##| sample :drum_snare_hard
    sleep 1
  end
end

live_loop :beat do
  stop
  sync :metronome
  use_bpm 46
  8.times do
    sample :loop_breakbeat,
           beat_stretch: 4,
           amp: 0.7
    sleep 4
  end
end

background = (ring :e5, :r, :g5, :r, :b5, :r, :e6, :r, :b5, :r, :g5, :r) * 2
live_loop :background do
  stop
  use_bpm 46
  sync :metronome
  use_synth :piano
  64.times do
    play background.tick , release: 1, amp: 0.5
    sleep 0.25
  end
end

# metallica - nothing else matters (24 beats)
# metallica - nothing else matters (24 beats)
melody =  (ring :b, :b, :r, :r, :r, :r, :b, :r)
melody += (ring :r, :r, :b, :c5,:b, :a,:b, :a)
melody += (ring :e, :e, :r, :r, :e, :r, :r, :e)
melody += (ring :e, :e, :r, :g, :e, :c5,:e)
melody += (ring :fs,:e, :r, :fs,:b, :b, :e, :r, :r)
melody += (ring :g, :r, :r, :b, :r, :e, :r, :r, :r)
melody += (ring :e, :e, :r, :b, :e, :g, :d, :a, :fs)
melody += (ring :c5, :g, :r, :e, :e, :e, :b, :e, :g)
melody += (ring :d, :a, :r, :fs,:c5, :g, :e, :r, :r)
melody += (ring :e, :e, :r, :b, :e, :g, :d, :a, :fs)
melody += (ring :c5, :g, :e, :g, :g, :b, :b, :g, :a)
melody += (ring :e, :g, :r, :b, :e, :b, :g, :e, :r)
melody += (ring :g, :b, :r, :e, :b, :g, :e, :r, :r)
live_loop :melody do
  ##| stop
  ##| sync :metronome
  use_bpm 69
  use_synth :piano
  ##| 64.times do
  note = melody.tick
  play note,
       release: (note != :r ? 0.75 : 1.75),
       decay: (note != :r ? 0.75 : 1.75),
       amp: 0.7
  sleep 0.5
  ##| end
end

