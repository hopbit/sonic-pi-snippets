# key: dp fac 2 c
# point_line: 0
# point_index: 0
# --
# DP FAC 2 C
# OK. This is the point, we'd like to extract below beats
# to a separate configuration scripts as it would be nice
# to have the possibility make them easy to reuse.
# And You've probably noticed, that the BPM had changed.
set_volume! 1

use_bpm 127

# Impeach the president: https://www.youtube.com/watch?v=wqbEsS5kFb8
# beat_loop = {
#     :drum_bass_hard => [0, 7, 8, 14], # kick (stopa)
#     :drum_snare_hard => [4, 12], # snare drum (werbel)
#     :drum_cymbal_closed => [0, 2, 4, 6, 7, 8, 12, 14], # closed hi-hat
#     :drum_cymbal_open => [10] # open hi-hat
# }

# Funky Drummer: https://www.youtube.com/watch?v=dNP8tbDMZNE
# beat_loop = {
#     :drum_bass_hard => [1, 3, 7, 11, 14], # KICK (stopa)
#     :drum_snare_hard => [5, 8, 10, 12, 13, 16], # SNARE (werbel)
#     :drum_cymbal_closed => [0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 15, 16], # CLOSED HI-HAT
#     :drum_cymbal_open => [8, 14] # OPEN HI-HAT
# }

# Big Beat: https://www.youtube.com/watch?v=sVysHOfV8CI&t=5
beat_loop = {
    :drum_bass_hard => [1, 4, 7, 9], # KICK (stopa)
    :drum_snare_hard => [5, 13], # SNARE (werbel)
    "#{ext_samples_path}/clap/clap707.wav" => [5, 13], # CLAP
}

live_loop :beat do
  16.times do |i|
    beat_loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? i
    end
    sleep 0.25
  end
end