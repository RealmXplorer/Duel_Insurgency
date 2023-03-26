playsound minecraft:soundeffect.parry master @a ~ ~ ~ .3 1
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ .5 2
particle minecraft:sonic_boom ~ ~1 ~ -0.5 0 0 .2 0
effect give @s minecraft:resistance 2 5 true
title @s title {"text":""}
title @s subtitle {"text":"🛡 Parry! 🛡","color":"blue"}
title @s times 0 15 5
execute if entity @s[tag=!parried] on attacker run function du-in:kit/all/parry/parried
tag @s add parried