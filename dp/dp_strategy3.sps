# key: dp strategy3
# point_line: 0
# point_index: 0
# --
# Let's start with simple house live loop
set_volume! 1

##| track = DNBTrack.new
track = DanceTrack.new

live_loop :metronome do
  use_bpm track.tempo
  puts "---> Bar: #{tick} <---"
  32.times do |b|
    puts "# Beat: #{b}"
    sleep 1
  end

end

live_loop :vocal do
  # stop
  use_bpm track.tempo
  sync :metronome
  4.times do
    sleep track.vocal[3]
    sample track.vocal[0],
           start: track.vocal[1],
           finish: track.vocal[2]
    sleep track.vocal[4]
  end
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
  2.times do
    notes.size.times do |n|
      play notes[n][0], decay: notes[n][1]
      sleep notes[n][2]*2
    end
  end
end

live_loop :beats do
  ##| stop
  sync :metronome
  use_bpm track.tempo
  16.times do
    sample track.beat[0],
           beat_stretch: track.beat[1], amp: 0.5
    sleep track.beat[2]
  end
end
