# key: dp str a
# point_line: 0
# point_index: 0
# --
# DP STR A, B, C, D, E, F, ...
set_volume! 1

track = TrackA.new(ext_samples_path)

live_loop :metronome do
  use_bpm track.tempo.get
  puts "---> Bar: #{tick} <---"
  32.times do |b|
    puts "# Beat: #{b}"
    ##| sample :drum_snare_hard
    sleep 1
  end
end

live_loop :vocal do
  ##| stop
  use_bpm track.tempo.get
  sync :metronome
  track.vocal.get['times'].times do
    sleep track.vocal.get['sleep_before']
    sample track.vocal.get['sample'],
           start: track.vocal.get['sample_start'],
           finish: track.vocal.get['sample_finish']
    sleep track.vocal.get['sleep_after']
  end
end

live_loop :background do
  ##| stop
  use_bpm track.tempo.get
  sync :metronome
  use_synth :piano
  if track.bg.get
    track.bg.get.size.times do |n|
      play track.bg.get[n][0],
           sustain: track.bg.get[n][1]
      sleep track.bg.get[n][2] * 2
    end
  end
end

live_loop :melody do
  ##| stop
  sync :metronome
  use_bpm track.tempo.get
  use_synth :piano
  melody = track.melody.get
  if melody
    melody.size.times do |n|
      play melody[n][0],
           decay: melody[n][1]
      sleep melody[n][2] * 2
    end
  end
end

live_loop :beat do
  ##| stop
  sync :metronome
  use_bpm track.tempo.get
  if track.beat.get
    track.beat.get['times'].times do
      sample track.beat.get['sample'],
             beat_stretch: track.beat.get['stretch'],
             amp: 0.7
      sleep track.beat.get['sleep']
    end
  end
end
