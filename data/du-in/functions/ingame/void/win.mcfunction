kill @e[type=skeleton]
effect clear @a darkness
stopsound @a record minecraft:music.suffocation
execute positioned 97 20 -107 run playsound minecraft:soundeffect.pylon.destroy master @a ~ ~ ~ 10000
title @a[tag=!falseWin] title [{"text":"Multiverse Tether","bold":true,"color":"red"}]
title @a[tag=!falseWin,tag=!lobby] subtitle {"text":"DESTROYED","color":"gold"}
title @a times 5 120 5
setblock 97 20 -107 minecraft:black_concrete
scoreboard players add #main pylonsDestroyed 1
scoreboard players add @a pylonsDestroyed 1
advancement grant @a[gamemode=!spectator] only du-in:void/void_free
bossbar set gast:pylon visible false
execute if score #main pylonsDestroyed matches 4.. run tag @a add timeFree
tag @a add win