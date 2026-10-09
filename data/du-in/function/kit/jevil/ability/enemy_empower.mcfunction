execute store result score @s jevilTimer run random value 14..19
tag @s add jevilDuration
execute unless score #jevil running matches 1 run function du-in:kit/jevil/ability/spin_loop
particle minecraft:ash ~ ~2 ~ 0.25 0.25 0.25 100 100 normal
playsound du-in:kit.jevil.pirouette master @s ~ ~ ~ 1 1.25
playsound du-in:kit.jevil.pirouette master @s ~ ~ ~ 1 0.75