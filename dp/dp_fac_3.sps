# key: dp fac 3
# point_line: 0
# point_index: 0
# --
# DP FAC 3: Let's try to convert this simple loop
# into the the some kind'a more OOP loop
set_volume! 1

beat = ImpeachThePresident.new(ext_samples_path)
# beat = FunkyDrummer.new(ext_samples_path)
# beat = BigBeat.new(ext_samples_path)
# beat = HouseBeat.new(ext_samples_path)

live_loop :beat do
  use_bpm beat.bpm
  beat.steps.times do |step|
    beat.loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? step
    end
    sleep 0.25
  end
end

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

