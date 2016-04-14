# key: wrug12
# point_line: 0
# point_index: 0
# --

# WRUG 12
# -------------------------------------------
# ...you can spice it up with sound fx
live_loop :doodle do
  with_fx :slicer do
    play scale(:c4, :minor_pentatonic).choose
    sleep [0.125, 0.25, 0.5].choose
  end
end

