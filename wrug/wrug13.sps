# key: wrug13
# point_line: 0
# point_index: 0
# --

# WRUG 13
# -------------------------------------------
# here are some of the synths of Sonic Pi
use_synth :piano
play_chord chord(:e4, :major)
sleep 1

[:saw, :piano, :tb303, :prophet].each do |n|
  use_synth n
  play_chord chord(:e4, :major)
  sleep 1
end

