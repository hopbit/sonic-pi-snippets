# key: ex1
# point_line: 0
# point_index: 0
# --
# Example 1 -------------------------------------------
# a trippy drum-computer beat

use_bpm 120

live_loop :boom do
  sync :drums
  sample :bd_boom
  sleep 4
end

live_loop :drums do
  with_fx :wobble do
    with_fx :ixi_techno do
      sample :drum_cymbal_pedal
      sleep 0.25
      sample :drum_cymbal_pedal
      sleep 0.5
      sample :drum_cymbal_pedal
      sleep 0.25
      sample :bd_haus
      sample :drum_cymbal_hard
      sleep 1
      sample :drum_cymbal_closed
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.5
      sample :bd_haus
      sample :drum_cymbal_closed
      sleep 1
    end
  end
end
