scoreboard players set #poisonApple running 1

execute as @e[type=marker,tag=poisonApple] at @s run function du-in:kit/jack_horner/ability/poison_apple/marker
execute at @e[type=snowball] run summon minecraft:marker ~ ~ ~ {Tags:["poisonApple","mapSpecific"]}

#Continue timer if another player has rage
execute if entity @a[tag=poisonApple] run return run schedule function du-in:kit/jack_horner/ability/poison_apple/loop 1t replace
execute if entity @e[type=snowball] run return run schedule function du-in:kit/jack_horner/ability/poison_apple/loop 1t replace
execute if entity @e[type=marker,tag=poisonApple] run return run schedule function du-in:kit/jack_horner/ability/poison_apple/loop 1t replace

#End loop
scoreboard players set #poisonApple running 0