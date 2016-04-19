# key: wrug04
# point_line: 0
# point_index: 0
# --

# WRUG 04 ---------------------------------------
# ten sam akord możemy zagrać także w taki sposób
play :c4
play :e4
play :g4

# albo w taki
sleep 1
play_chord [:c4, :e4, :g4], amp: 3

# albo w taki
sleep 1
play_chord chord(:c4, :major), amp: 2
