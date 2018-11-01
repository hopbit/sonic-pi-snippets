# key: mel cj
# point_line: 5
# point_index: 0
# --
# mr presidend - coco jumbo (8 beats)
# http://latwenuty.blogspot.com/2012/07/mr-president-coco-jambo.html
notes = [:gs4,:cs5,:gs5,:g4,:cs5] # 1 tact
notes += [nil,:gs5,:e5,:ds5,:cs5]
notes += [:a4,:cs5,:e5,:b4,:ds5] # 2 tact
notes += [nil,:fs5,:e5,:ds5,:cs5]
notes_sleeps  = [0.5, 0.5, 0.25, 0.25]
notes_sleeps += [0.25, 0.25, 0.5, 0.5, 0.5, 0.5]
notes_sleeps = notes_sleeps * 2
##| puts "sum: #{notes_sleeps.inject(0, :+)}" # debug
