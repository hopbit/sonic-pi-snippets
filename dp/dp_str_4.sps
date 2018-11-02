# key: dp str 4
# point_line: 0
# point_index: 0
# --
# DP STR 4
set_volume! 1

##| track = Track1.new
##| track = Track2.new
track = Track3.new

live_loop :metronome do
  use_bpm track.tempo
  puts "---> Bar: #{tick} <---"
  32.times do |b|
    puts "# Beat: #{b}"
    ##| sample :drum_snare_hard
    sleep 1
  end
end

live_loop :vocal do
  # stop
  use_bpm track.tempo
  sync :metronome
  track.vocal['times'].times do
    sleep track.vocal['sleep_before']
    sample track.vocal['sample'],
           start: track.vocal['sample_start'],
           finish: track.vocal['sample_finish']
    sleep track.vocal['sleep_after']
  end
end

live_loop :background do
  ##| stop
  use_bpm track.tempo
  sync :metronome
  use_synth :piano
  track.bg.size.times do |n|
    play track.bg[n][0], sustain: track.bg[n][1]
    sleep track.bg[n][2] * 2
  end
end

live_loop :melody do
  ##| stop
  sync :metronome
  use_bpm track.tempo
  use_synth :piano
  melody = track.melody
  melody.size.times do |n|
    play melody[n][0], decay: melody[n][1]
    sleep melody[n][2] * 2
  end
end

live_loop :beats do
  ##| stop
  sync :metronome
  use_bpm track.tempo
  track.beat['times'].times do
    sample track.beat['sample'],
           beat_stretch: track.beat['stretch'],
           amp: 0.1
    sleep track.beat['sleep']
  end
end
