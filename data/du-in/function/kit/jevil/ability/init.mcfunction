
execute if entity @s[tag=!void] run function du-in:kit/jevil/ability/default_init
execute if entity @s[tag=void] run function du-in:kit/jevil/ability/void/init

execute store result score @a jevilTimer run random value 12..17
playsound minecraft:jevil.pirouette master @a ~ ~ ~ 1 1