# key: wrug11
# point_line: 0
# point_index: 0
# --

# WRUG 11 ---------------------------------
# melodia generowana z losowo wybranych nut
# z losowymi przerwami pomiedzy dzwiekami

loop do
  play scale(:c4, :major).choose
  sleep [0.125, 0.25, 0.5].choose
end
