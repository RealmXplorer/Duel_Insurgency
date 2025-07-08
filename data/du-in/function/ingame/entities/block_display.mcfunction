#Jevil Neo Chaos
execute if entity @s[scores={jevilTimer=0..}] run function du-in:kit/jevil/neo_chaos/beam

#Death's fire cone
execute if entity @s[tag=flame,scores={flameTimer=-99..}] run function du-in:kit/death/ability/timer

execute if entity @s[tag=gold,scores={goldTimer=1..}] run function du-in:kit/jack_horner/ability/midas/timer
