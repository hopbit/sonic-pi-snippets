# key: dp strategy2
# point_line: 0
# point_index: 0
# --
# Let's start with simple house live loop
set_volume! 1

track = DNBTrack.new

live_loop :metronome do
  use_bpm track.tempo
  puts "---> Bar: #{tick} <---"
  8.times do |b|
    puts "# Beat: #{b}"
    sleep 1
  end
end

live_loop :vocal, sync: :metronome do
  ##| stop
  use_bpm track.tempo
  sleep track.vocal[2]
  sample track.vocal[0], beat_stretch: track.vocal[1]
  sleep track.vocal[3]
end

live_loop :background do
  ##| stop
  use_bpm track.tempo
  sync :metronome
  use_synth :piano
  track.bg.size.times do |n|
    play track.bg[n][0], sustain: track.bg[n][1]
    sleep track.bg[n][2]*2
  end
end

live_loop :melody do
  ##| stop
  sync :metronome
  use_bpm track.tempo
  use_synth :piano
  notes = track.melody
  notes.size.times do |n|
    play notes[n][0], decay: notes[n][1]
    sleep notes[n][2]*2
  end
end

live_loop :beats, sync: :metronome do
  ##| stop
  use_bpm track.tempo
  sample track.beat, beat_stretch: 4, amp: 0.5
  sleep 4
end
