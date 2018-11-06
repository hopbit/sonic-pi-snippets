# key: voc taratum
# point_line: 1
# point_index: 2
# --
# https://www.samplephonics.com/products/free/vocals/casey-lipka-vocals-freebie
live_loop :vocal, sync: :metronome do
  ##| stop
  use_bpm 170
  sp = "#{ext_samples_path}/vocals/CaseyLipkaVocals_Mini_SP/80_C#m_OctDownVocal_01_612.wav"
  sample sp, beat_stretch: 64
  ##| sleep sample_duration sp
  sleep 64
end