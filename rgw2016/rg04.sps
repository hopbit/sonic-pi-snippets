# key: rg4
# point_line: 0
# point_index: 0
# --
# sweet child o' mine (16 beats)
sweet_ch_notes = [:cs4,:cs5,:gs4,:fs4,:fs5, :gs4, :f5, :gs4]
sweet_ch_notes += [:ds4,:cs5,:gs4,:fs4,:fs5, :gs4, :f5, :gs4]
sweet_ch_sleeps = [0.25] * 16
live_loop :sweet_child do
  sync :loop_amen
  use_synth :piano # :chiplead
  use_bpm 85
  #with_fx :ixi_techno, phase: 8 do
    16.times do |n|
      play sweet_ch_notes[n], amp: 0.25
      sleep sweet_ch_sleeps[n]
    end
  #end
end