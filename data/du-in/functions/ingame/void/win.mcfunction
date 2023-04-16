kill @e[type=skeleton]
scoreboard objectives setdisplay sidebar
effect clear @a darkness
stopsound @a record
stopsound @a master minecraft:music.suffocation
stopsound @a ambient minecraft:soundeffect.whisper
execute positioned 97 20 -107 run playsound minecraft:soundeffect.pylon.destroy master @a ~ ~ ~ 10000
title @a[tag=!falseWin] title [{"text":"Multiverse Tether","bold":true,"color":"red"}]
title @a[tag=!falseWin,tag=!lobby] subtitle {"text":"DESTROYED","color":"gold"}
title @a times 5 120 5
setblock 97 20 -107 minecraft:black_concrete
scoreboard players add #main pylonsDestroyed 1
scoreboard players add @a pylonsDestroyed 1
#scoreboard players add @a pylonNum 1
advancement grant @a[gamemode=!spectator] only du-in:void/void_free
bossbar set gast:pylon visible false
execute if score #main pylonsDestroyed matches 4.. run tag @a add timeFree
execute store result score @a lastVoidLock run scoreboard players get #main map
tag @a[scores={lastVoidLock=1},tag=cmap,tag=!timeFree] add mcLock
tag @a[scores={lastVoidLock=2},tag=cmap,tag=!timeFree] add hiveLock
tag @a[scores={lastVoidLock=3},tag=cmap,tag=!timeFree] add daLock
tag @a[scores={lastVoidLock=4},tag=cmap,tag=!timeFree] add cavesLock
tag @a[scores={lastVoidLock=5},tag=cmap,tag=!timeFree] add mustafarLock
tag @a[scores={lastVoidLock=6},tag=cmap,tag=!timeFree] add ebbotLock
tag @a[scores={lastVoidLock=8},tag=cmap,tag=!timeFree] add d2Lock
tag @a[scores={lastVoidLock=9},tag=cmap,tag=!timeFree] add mazeLock
tag @a[scores={lastVoidLock=10},tag=cmap,tag=!timeFree] add cliffLock
tag @a[scores={lastVoidLock=11},tag=cmap,tag=!timeFree] add mirageLock
tag @a[scores={lastVoidLock=13},tag=cmap,tag=!timeFree] add shLock
tag @a[scores={lastVoidLock=15},tag=cmap,tag=!timeFree] add harvestLock
tag @a add fromVoid
tag @a add win