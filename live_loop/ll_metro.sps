# key: ll metro
# point_line: 10
# point_index: 0
# --
live_loop :metronome do
  use_bpm 170
  puts "---> Bar: #{tick} <---"
  8.times do |b|
    puts "# Beat: #{b}"
    ##| sample :drum_snare_hard
    sleep 1
  end
end
