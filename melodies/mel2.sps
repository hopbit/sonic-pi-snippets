# key: mel2
# point_line: 0
# point_index: 0
# --

# coco jumbo?????
notes = [:a4,:cs5,:gs6,:g4,:c5,:c5,:g6,:e6]



commend do
 notes = [:a4,:d5,:a5,:d5]
notes += [:a4,:a5,:f5,:e5]
notes += [:d5, :ds5]
sleeps = [0.25]* 10

live_loop :foo do
  
  4.times do |n|
    play notes[n]
    sleep sleeps[n]
  end
end

end

