# key: dp fac 3 bit d
# point_line: 0
# point_index: 0
# --
# DP FAC 3 BIT D
# https://www.youtube.com/watch?v=sVysHOfV8CI&t=5
class BigBeat < BeatLoop
  def initialize(samples_path)
    @steps = 16
    @bpm = 127
    @loop = {
        :drum_bass_hard => [1, 4, 7, 9], # KICK (stopa)
        :drum_snare_hard => [5, 13], # SNARE (werbel)
        "#{samples_path}/clap/clap707.wav" => [5, 13], # CLAP
    }
  end
end

