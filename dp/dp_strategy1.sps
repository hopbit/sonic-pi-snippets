# key: dp strategy1
# point_line: 0
# point_index: 0
# --
# Let's start with simple house live loop
set_volume! 1

live_loop :metronome do
  use_bpm 170
  puts "---> Bar: #{tick} <---"
  8.times do |b|
    puts "# Beat: #{b}"
    ##| sample :drum_snare_hard
    sleep 1
  end
end

# https://www.samplephonics.com/products/free/vocals/casey-lipka-vocals-freebie
live_loop :vocal, sync: :metronome do
  # stop
  use_bpm 170
  sleep 0
  sp = 'E:\hopbit\dj\samples\vocals\CaseyLipkaVocals_Mini_SP\80_C#m_OctDownVocal_01_612.wav'
  sample sp, beat_stretch: 64
  sleep 64
end

# https://www.youtube.com/watch?v=aPE0sxN6zSc
background = [[:cs3,4.0,2.0],[:fs2,3.0,2.0],[:a2,4.0,2.0],[:b2,4.0,2.0]]*2
live_loop :background do
  # stop
  use_bpm 170
  sync :metronome
  use_synth :piano
  background.size.times do |n|
    play background[n][0], sustain: background[n][1]
    sleep background[n][2]*2
  end
end

# Ed Sheeran - Shape Of You
# https://www.youtube.com/watch?v=aPE0sxN6zSc
# 2 bars, 8 beats
notes =  [[:db4,0.5,0.75],[:e4,0.5,0.75],[:db4,0.5,0.5]]*3
notes += [[:eb,0.5,0.75],[:db4,0.5,0.75],[:b3, 1.0,0.5]]
live_loop :melody do
  # stop
  sync :metronome
  use_bpm 170
  use_synth :piano
  notes.size.times do |n|
    play notes[n][0], decay: notes[n][1]
    sleep notes[n][2]*2
  end
end

live_loop :beats, sync: :metronome do
  # stop
  use_bpm 170
  sample :loop_amen, beat_stretch: 4, amp: 0.1
  sleep 4
end
