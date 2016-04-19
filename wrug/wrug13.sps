# key: wrug13
# point_line: 0
# point_index: 0
# --

# WRUG 13 -----------------------------------
# W Sonic Pi mamy do wyboru sporo wbudowanych 
# syntezatorów. Oto kilka z nich: 

[:saw, :piano, :tb303, :prophet, :chiplead, :fm].each do |n|
  use_synth n
  play_chord chord(:e4, :major)
  sleep 1
end

