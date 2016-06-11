# key: 24h
# point_line: 0
# point_index: 15
# --
# let's play this for 24 hours
# Alexandre rANGEL www.quasecinema.org
# https://gist.github.com/AlexandreRangel/b269e8ca6acfdd2c914130429e8874c9#file-lets-play-this-for-24-hours-rb

t = Time.new
tx = t.year * t.month * t.day * t.hour * t.min * t.sec
use_random_seed tx
puts 'the magic number now is... '
puts t
puts tx

#2016-06-11 17:25:58 -0300
#3279830400

set_volume! 0.5

live_loop :texture1 do
  with_bpm 12 do
    with_fx :flanger, phase: [1,2,4,8,16].choose, mix: rrand(0.2,0.5) do

      use_synth :growl
      play scale(:g2, :egyptian).choose,
           res: rrand(0.3,0.8),
           res_slide: [0.5,1,2,4].choose,
           pan: rrand(-0.8,0.8), pan_slide: [1,2,3,6].choose,
           attack: [2,4,8.16].choose, sustain: 2, release: 8,
           amp: rrand(1,5) *0.7
      sleep 2
      use_synth :fm
      play chord(scale(:g2, :egyptian).choose,:major),
           res: rrand(0.2,0.77),
           res_slide: [0.5,1,2,4,8].choose,
           divisor: [[2,4].choose,rrand(0,4)].choose,
           divisor_slide: 4,
           attack: [2,4,8,].choose, sustain: 2,
           release: [8,8,8,16].choose,
           amp: rrand(1,5.1) *0.7
      sleep 2
      play scale(:g3, :egyptian).choose,
           res: rrand(0.2,0.71),
           res_slide: [0.5,1,2,4,8].choose,
           divisor: [[2,4,8,12,16].choose,rrand(0,4)].choose,
           divisor_slide: 4,
           attack: [2,4].choose, sustain: 2, release: [6,8,12,16].choose,
           pan: rrand(-0.6,0.6), pan_slide: [1,2,3,6,12].choose,
           divisor_slide: 4, amp: rrand(1,4)*0.7
      sleep 8
    end
  end
end

live_loop :texture2 do
  with_bpm 6 do
    with_fx :flanger, phase: [1,2,4,8,16,32].choose, mix: rrand(0.2,0.5) do
      use_synth :fm
      with_fx :pitch_shift, pitch: -8,
              window_size: rrand(0.001,0.01) do
        play scale(:g2, :spanish).choose,
             divisor: [2,4,8].choose, divisor_slide: 4,
             pan: rrand(-0.8,0.8), pan_slide: [1,2,3,6].choose,
             attack: 2, sustain: 2, release: 8,
             amp: rrand(2,5.2) *0.7
        sleep 2
        use_synth :fm
        play chord(scale(:g2, :spanish).choose,:minor),
             divisor: [[2,4].choose,rrand(0,4)].choose,
             divisor_slide: 4,
             attack: [2,4].choose, sustain: 2,
             release: [8,8,8,16].choose,
             amp: rrand(2,6) *0.7
        sleep 2
        play scale(:g2, :super_locrian).choose,
             divisor: [4,8].choose,
             attack: 2, sustain: 2, release: [6,8,12,16].choose,
             pan: rrand(-0.6,0.6), pan_slide: [1,2,3,6,12].choose,
             divisor_slide: 4, amp: rrand(1,5.3) *0.7
        sleep 4
      end
    end
  end
end

sleep [0,0,0,0,1,2,3,4].choose

live_loop :texture3 do
  with_bpm 24 do
    t = Time.new
    use_synth :fm
    with_fx :pitch_shift, pitch: -2,
            window_size: rrand(0.01,0.1) do
      with_fx :vowel, voice: [1,2,3,4].choose,
              vowel_sound: [1,2,3,4,5].choose do
        with_fx :pitch_shift, pitch: [1,2,4].choose,
                window_size: rrand(0.001,0.01), mix: 0.77 do
          ### influenced by the hours
          play ((scale(:g2, :spanish).choose) +12 - t.hour),
               divisor: [2,4,8].choose, divisor_slide: 4,
               pan: rrand(-0.8,0.8), pan_slide: [1,2,3,6].choose,
               attack: [2,4,8].choose, sustain: 2, release: 8,
               amp: rrand(2,5.4) *1.2
          sleep 4
          ### influenced by the minutes:
          use_synth :fm
          play (chord(scale(:g2, :spanish).choose,:minor) -30 + t.min),
               divisor: [[2,4].choose,rrand(0,4)].choose,
               divisor_slide: 4,
               attack: [2,4].choose, sustain: 2,
               release: [8,8,8,16].choose,
               amp: rrand(2,6) *1.2
          sleep 2
          ### influenced by the seconds:
          play ((scale(:g3, :minor_pentatonic).choose) -30 + t.sec),
               divisor: [4,8].choose,
               attack: 2, sustain: 2, release: [6,8,12,16].choose,
               pan: rrand(-0.6,0.6), pan_slide: [1,2,3,6,12].choose,
               amp: rrand(1,5.22) *1.2
          sleep 2
        end
      end
    end
  end
end