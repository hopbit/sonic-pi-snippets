# key: wrug16
# point_line: 0
# point_index: 0
# --

# WRUG 16
# -------------------------------------------------------
# możemy stworzyć więcej niż jedną żywą pętlę!
# ogranicza nas tu tylko moc naszego komputera
use_bpm 75

live_loop :beats do
  sample :loop_amen, beat_stretch: 2 
  # 1. loop_breakbeat!, amp2
  sleep 2
end

live_loop :doodle do
  sync :beats
  2.times do
    with_fx :slicer do
      4.times do
        play scale(:c4, :minor).choose 
        # 2. chord!
        sleep [0.125, 0.25, 0.5].choose 
        # 3. sleep!
      end
    end
  end
end
