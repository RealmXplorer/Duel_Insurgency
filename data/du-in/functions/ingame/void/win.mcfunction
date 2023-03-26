kill @e[type=skeleton]
effect clear @a darkness
stopsound @a record minecraft:music.suffocation
execute positioned 97 20 -107 run playsound minecraft:soundeffect.pylon.destroy master @a ~ ~ ~ 10000
title @a[tag=!falseWin] title [{"text":"Multiverse Tether","bold":true,"color":"red"}]
title @a[tag=!falseWin,tag=!lobby] subtitle {"text":"DESTROYED","color":"gold"}
title @a times 5 120 5
setblock 97 20 -107 minecraft:black_concrete
scoreboard players add @a pylonsDestroyed 1
bossbar set gast:pylon visible false
tag @a add win