# key: dp fac 2 a
# point_line: 0
# point_index: 0
# --
# DP FAC 2 A
# This is a little bit more flexible solution.
# Let's try add second beat...
set_volume! 1

use_bpm 96

beat_loop = {
    :drum_bass_hard => [0, 7, 8, 14], # kick (stopa)
    :drum_snare_hard => [4, 12], # snare drum (werbel)
    :drum_cymbal_closed => [0, 2, 4, 6, 7, 8, 12, 14], # closed hi-hat
    :drum_cymbal_open => [10] # open hi-hat
}

live_loop :beat do
  16.times do |i|
    beat_loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? i
    end
    sleep 0.25
  end
end