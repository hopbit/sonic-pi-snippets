# key: dp fac 4
# point_line: 0
# point_index: 0
# --
# DP FAC 4: In regular application You'll
# probably will have something like this:
set_volume! 1

arg = 'Funky Drummer'

if arg == 'Impeach The President'
  beat = ImpeachThePresident.new(ext_samples_path)
elsif arg == 'Funky Drummer'
  beat = FunkyDrummer.new(ext_samples_path)
elsif arg == 'Big Beat'
  beat = BigBeat.new(ext_samples_path)
elsif arg == 'House Beat'
  beat = HouseBeat.new(ext_samples_path)
else
  beat = nil
end

live_loop :beat do
  use_bpm beat.bpm
  beat.steps.times do |step|
    beat.loop.each do |s, pattern|
      sample s, amp: 0.5 if pattern.include? step
    end
    sleep 0.25
  end
end
