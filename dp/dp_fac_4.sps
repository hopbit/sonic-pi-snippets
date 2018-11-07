# key: dp fac 4
# point_line: 0
# point_index: 0
# --
# DP FAC 4: Let's try to convert this simple loop
# into the the some kind'a more OOP loop
set_volume! 1

use_bpm 96 # 127

beat = BigBeat.new
live_loop :beat do
  beat.steps.times do |step|
    beat.loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? step
    end
    sleep 0.25
  end
end
