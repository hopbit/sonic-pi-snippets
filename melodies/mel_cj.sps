# key: mel cj
# point_line: 7
# point_index: 0
# --
# mr presidend - coco jumbo (8 beats)
# http://latwenuty.blogspot.com/2012/07/mr-president-coco-jambo.html
notes =  [[:gs4,0.5, 0.5],  [:cs5,0.5,0.5],[:gs5,0.25,0.25],[:g4,0.25,0.25],[:cs5,0.25,0.25]]# 1 tact
notes += [[nil ,0.25,0.25], [:gs5,0.5,0.5],[:e5,0.5,0.5],   [:ds5,0.5,0.5], [:cs5,0.5,0.5]]
notes += [[:a4 ,0.5, 0.5],  [:cs5,0.5,0.5],[:e5,0.25,0.25], [:b4,0.25,0.25],[:ds5,0.25,0.25]] # 2 tact
notes += [[nil ,0.25, 0.25],[:fs5,0.5,0.5],[:e5,0.5,0.5],   [:ds5,0.5,0.5], [:cs5,0.5,0.5]]
# puts "sum: #{notes.inject(0.0) { |sum, n| sum + n[1]}}" # should return 8.0
