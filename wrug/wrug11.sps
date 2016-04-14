# key: wrug11
# point_line: 0
# point_index: 0
# --

# WRUG 11
# -------------------------------------------
# a melody generated from random numbers
live_loop :doodle do
  play scale(:c4, :minor_pentatonic).choose
  sleep [0.125, 0.25, 0.5].choose
end

