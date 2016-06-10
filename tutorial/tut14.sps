# key: tut14
# point_line: 0
# point_index: 0
# --
# TUT 14 -------------------------------------------
# LIVE LOOP! To jest kodowanie na żywo

live_loop :beats do # synth, sample, fx
  sample :loop_amen
  sleep sample_duration(:loop_amen)
end
