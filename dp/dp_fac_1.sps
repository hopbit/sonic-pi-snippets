# key: dp fac 1
# point_line: 0
# point_index: 0
# --
# DP FAC 1: Our current beat loop isn't so flexible if we'd like to introduce different beat patterns
set_volume! 1

use_bpm 170 # 132 # 96

live_loop :beat do
  8.times do
    sample :loop_amen, # :loop_industrial, # :loop_breakbeat,
           beat_stretch: 4,
           amp: 0.7
    sleep 4
  end
end
