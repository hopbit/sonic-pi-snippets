# key: dp str s5
# point_line: 0
# point_index: 0
# --
# DP STR S5
class VocalACapella < VocalStrategy
  def initialize(sample_path)
    @sample_path = sample_path
  end
  def get
    {
        'sample' => "#{@sample_path}/vocals/JoshuaDavidVocals_Mini_SP/80_F_AhhHarmonyVocal_01_621.wav",
        'times' => 4,
        'sample_start' => 0.0,
        'sample_finish' => 1.0,
        'sleep_before' => 0,
        'sleep_after' => 32
    }
  end
end

class VocalDNB < VocalStrategy
  def initialize(samples_path)
    @samples_path = samples_path
  end
  def get
    {
        'sample' => "#{@samples_path}/vocals/CaseyLipkaVocals_Mini_SP/80_C#m_OctDownVocal_01_612.wav",
        'times' => 4,
        'sample_start' => 0,
        'sample_finish' => 0.0625,
        'sleep_before' => 0,
        'sleep_after' => 16
    }
  end
end

class VocalDance < VocalStrategy
  def initialize(samples_path)
    @samples_path = samples_path
  end
  def get
    {
        'sample' => "#{@samples_path}/vocals/MaleHouseVocals_Freebie_SP/116_D#_Harmony_B_01_SP.wav",
        'times' => 4,
        'sample_start' => 0.75,
        'sample_finish' => 1.0,
        'sleep_before' => 0,
        'sleep_after' => 8
    }
  end
end


