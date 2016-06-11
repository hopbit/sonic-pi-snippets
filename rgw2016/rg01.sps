# key: rg1
# point_line: 0
# point_index: 0
# --
# mr presidend - coco jumbo (8 beats)
# http://latwenuty.blogspot.com/2012/07/mr-president-coco-jambo.html
live_loop :coco_jumbo do
  use_synth :pluck
  use_bpm 85
  notes = [:gs4,:cs5,:gs5,:g4,:cs5,nil,:gs5,:e5,:ds5,:cs5] # 1 tact
  notes += [:a4,:cs5,:e5,:b4,:ds5,nil,:fs5,:e5,:ds5,:cs5] # 2 tact
  times = [0.5, 0.5, 0.25, 0.25,0.25, 0.25, 0.5, 0.5, 0.5, 0.5] * 2
  ##| puts "sum: #{times.inject(0, :+)}" # debug
  play_pattern_timed notes, times, relese: 1, amp: 0.5
end
