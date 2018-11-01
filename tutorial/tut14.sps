# key: tut14
# point_line: 0
# point_index: 0
# --
# TUT 14 -------------------------------------------
# LIVE LOOP! To jest kodowanie na żywo

live_loop :beats do # sample, def. synth, mod_sine synth, fx
  sample :loop_amen, amp: 0.5
  sleep sample_duration(:loop_amen)
end
