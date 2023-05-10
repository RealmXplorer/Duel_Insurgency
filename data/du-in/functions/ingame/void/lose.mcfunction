stopsound @a master minecraft:music.suffocation
stopsound @a record
schedule clear du-in:ingame/void/whisper
stopsound @a ambient
execute positioned 97 20 -107 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 0.5
execute positioned 97 20 -107 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1
execute positioned 97 20 -107 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 2
title @a[tag=!falseWin] title [{"text":"Multiverse Tether","bold":true,"color":"red"}]
title @a[tag=!falseWin,tag=!lobby] subtitle {"text":"ACTIVATED","color":"dark_red"}
title @a times 5 120 5
setblock 97 20 -107 minecraft:black_concrete
bossbar set gast:pylon visible false
tag @a add fromVoid
tag @a add voidLose
tag @a add win