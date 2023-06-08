#Kill goners
kill @e[type=skeleton]

#Change sidebar
scoreboard objectives setdisplay sidebar

#Clear darkness effect
effect clear @a darkness

#Add 1 to pylons destroyed
scoreboard players add #main pylonsDestroyed 1
scoreboard players add @a pylonsDestroyed 1

execute if score #main pylonsDestroyed matches 3 run function du-in:lobby/display/void/switch
execute if score #main pylonsDestroyed matches 3 run function du-in:lobby/void/wind

#Stop sounds and music
stopsound @a record
stopsound @a master minecraft:music.suffocation
stopsound @a ambient minecraft:soundeffect.whisper
stopsound @a master minecraft:entity.warden.heartbeat

#Clear all scheduled ambience and music
function du-in:music/void/schedule_clear

#Play sound of pylon destroyed
execute positioned 97 20 -107 run playsound minecraft:soundeffect.pylon.destroy master @a ~ ~ ~ 10000

execute if score #main pylonsDestroyed matches 4.. positioned 97 20 -107 run playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 100000 .5
execute if score #main pylonsDestroyed matches 4.. positioned 97 20 -107 run playsound minecraft:soundeffect.countdown master @a ~ ~ ~ 100000 .5
execute if score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin] title [{"text":"Multiverse Stability","bold":true,"color":"red"}]
execute if score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin,tag=!lobby] subtitle {"text":"COLLAPSING","color":"blue"}

execute unless score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin] title [{"text":"Multiverse Tether","bold":true,"color":"red"}]
execute unless score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin,tag=!lobby] subtitle {"text":"DESTROYED","color":"gold"}
title @a times 5 120 5

#Replace block to stop beacon beam
setblock 97 20 -107 minecraft:black_concrete

#Give advancement
advancement grant @a[gamemode=!spectator] only du-in:void/void_free

#Hide bossbar
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
tag @a[scores={lastVoidLock=10},tag=cmap,tag=!timeFree] add harvestLock
#tag @a[scores={lastVoidLock=10},tag=cmap,tag=!timeFree] add cliffLock
tag @a[scores={lastVoidLock=11},tag=cmap,tag=!timeFree] add mirageLock
tag @a[scores={lastVoidLock=12},tag=cmap,tag=!timeFree] add wsLock
tag @a[scores={lastVoidLock=13},tag=cmap,tag=!timeFree] add jermLock
tag @a[scores={lastVoidLock=14},tag=cmap,tag=!timeFree] add chessLock

#tag @a[scores={lastVoidLock=13},tag=cmap,tag=!timeFree] add shLock

tag @a[scores={lastVoidLock=1},tag=kothMap,tag=!timeFree] add zigLock
tag @a[scores={lastVoidLock=2},tag=kothMap,tag=!timeFree] add nethLock

tag @a[scores={lastVoidLock=4},tag=kothMap,tag=!timeFree] add bowlLock
tag @a[scores={lastVoidLock=5},tag=kothMap,tag=!timeFree] add moraLock
tag @a[scores={lastVoidLock=6},tag=kothMap,tag=!timeFree] add duneLock

execute as @a[tag=playing] run function du-in:ingame/void/end/dream

tag @a remove kothMap
tag @a add fromVoid
tag @a add win