# key: bg2
# point_line: 3
# point_index: 0
# --
live_loop :background0 do
  ##| sync :metronome
  with_fx :flanger, phase: 8 do
    with_fx :echo, phase: 0.5 do
      8.times do
        sample :bass_voxy_hit_c, amp: 0.75
        sleep 0.5
      end
    end
  end
end

