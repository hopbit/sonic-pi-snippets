# key: panie janie
# point_line: 0
# point_index: 0
# --

# WRUG 20  -----------------------------------------
# Panie Janie!
use_bpm 140

notes = (
  # Panie Janie! x2 
  [:f4, 1, :g4, 1, :a4, 1, :f4, 1] * 2 +
  # Rano wstań x2
  [:a4, 1, :bb4, 1, :c5, 2] * 2 +
  # Wszystkie dzwony biją! x2
  [:c5, 0.5, :d5, 0.5, :c5, 0.5, :bb4, 0.5, :a4, 1, :f4, 1] * 2 +
  # Bim, bam, bom! x2
  [:f4, 1, :c4, 1, :f4, 2] * 2
).ring

4.times do |c|
  sleep 8 * c
  live_loop c.to_s.to_sym do
    play notes.tick
    sleep notes.tick
  end
end


