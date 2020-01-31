Shinning = "C:/Users/ismael_diaz/Documents/Audacity/The Shining - Bat.wav"
Bojack = "C:/Users/ismael_diaz/Documents/Audacity/Fruit-Bojack.wav"
Shinning2 = "C:/Users/ismael_diaz/Documents/Audacity/The Shining - Bat Scene2.wav"
Kiss = "C:/Users/ismael_diaz/Documents/Audacity/The Killers.wav"
x = 6

use_bpm 110
sample Shinning, amp: 5
sleep 33
with_fx:echo do
  sample Shinning2, amp: 4
end
sleep 5
live_loop:Amry do
  10.times do
    with_fx:tremolo do
      use_synth :fm
      x=x-0.6
      play :A2, amp: x
      sleep 1.5
      play :A2, amp: x
      sleep 0.5
      play :C3, amp: x
      sleep 0.75
      play :A2, amp: x
      sleep 0.75
      play :G2, amp: x
      sleep 0.5
      play :F2, amp: x
      sleep 2
      play :E2, amp: x
      sleep 2
    end
  end
  stop
end
live_loop :The_killers do
  2.times do
    sleep 15
    sample Kiss, amp: 0.2
    sleep 25
  end
  stop
end
sleep 16
live_loop:drums do
  24.times do
    with_fx :tremolo do
      sample :drum_heavy_kick, amp: 5
      sleep 1
    end
  end
  stop
end
sleep 15
live_loop:cymbal do
  17.times do
    sample :drum_cymbal_closed
    sleep 1
  end
  stop
end
sample Bojack, amp: 3