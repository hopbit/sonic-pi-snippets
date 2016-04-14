# key: wrug17
# point_line: 0
# point_index: 0
# --

# WRUG 17
# -------------------------------------------
# four live loops play a classic canon
use_bpm 140

melody = (
  # Frère Jacques!
  [:f4, 1, :g4, 1, :a4, 1, :f4, 1] * 2 +
  # Dormez vous?
  [:a4, 1, :bb4, 1, :c5, 2] * 2 +
  # Sonnez les matines!
  [:c5, 0.5, :d5, 0.5, :c5, 0.5, :bb4, 0.5, :a4, 1, :f4, 1] * 2 +
  # Ding, ding dong!
  [:f4, 1, :c4, 1, :f4, 2] * 2
).ring

4.times do |c|
  sleep 8 * c
  live_loop c.to_s.to_sym do
    play melody.tick
    sleep melody.tick
  end
end


