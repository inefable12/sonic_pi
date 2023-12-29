use_bpm 36
use_synth :piano

play chord(:C3, :major), release:5
sleep 1
play chord(:C3, :major)
sleep 0.25
play chord(:C3, :major)
sleep 0.5
play chord(:F2, :major), release:5
sleep 1.25
play chord(:E3, :major), release:5
sleep 0.75
play chord(:A3, :minor), release:5
sleep 1.25
play chord(:F3, :major)
sleep 0.25
play chord(:F3, :major)
sleep 0.5
play chord(:C3, :major), release:5
sleep 2.25

live_loop :kick do
  sleep 1
  sample :drum_bass_hard
end

live_loop :snare do
  sync :kick
  sleep 0.5
  sample :drum_snare_hard
end

live_loop :hihat do
  sync :kick
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
end

live_loop :intro do
  play chord(:C3, :major), release:5
  sleep 1
  play chord(:C3, :major)
  sleep 0.25
  play chord(:C3, :major)
  sleep 0.5
  play chord(:F2, :major), release:5
  sleep 1.25
  play chord(:E3, :major), release:5
  sleep 0.75
  play chord(:A3, :minor), release:5
  sleep 1.25
  play chord(:F3, :major)
  sleep 0.25
  play chord(:F3, :major)
  sleep 0.5
  play chord(:C3, :major), release:5
  sleep 2.25
end