# key: wrug16
# point_line: 0
# point_index: 0
# --

# WRUG 16
# -------------------------------------------
# here's a drumloop with a random melody
use_bpm 75

live_loop :beats do
  sample :loop_amen, beat_stretch: 2
  sleep 2
end

live_loop :doodle do
  use_random_seed 1337
  2.times do
    sync :beats
    with_fx :slicer do
      4.times do
        play scale(:c4, :minor_pentatonic).choose
        sleep [0.125, 0.25, 0.5].choose
      end
    end
  end
end


