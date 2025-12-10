#Kill goners
kill @e[type=skeleton]

#Change sidebar
scoreboard objectives setdisplay sidebar

#Clear darkness effect
effect clear @a darkness

#Add 1 to pylons destroyed
scoreboard players add #main pylonsDestroyed 1
scoreboard players add @a pylonsDestroyed 1

execute if score #main pylonsDestroyed matches 3 run function du-in:lobby/theme/void/switch
execute if score #main pylonsDestroyed matches 3 run function du-in:void/lobby_amb

#Stop sounds and music
stopsound @a record minecraft:music.pursuithappiness
stopsound @a master minecraft:music.suffocation
stopsound @a ambient minecraft:soundeffect.whisper
stopsound @a master minecraft:entity.warden.heartbeat

#End environmental hazards
kill @e[type=marker,tag=bridgeMarker]
function du-in:void/hazard/fire/fire_end
function du-in:void/hazard/shock/end_shock

#Clear all scheduled ambience and music
function du-in:music/void/schedule_clear


#Play sound of pylon destroyed
execute positioned 97 20 -107 unless score #main pylonsDestroyed matches 4.. run playsound minecraft:soundeffect.pylon.destroy master @a ~ ~ ~ 10000

execute if score #main pylonsDestroyed matches 4.. positioned 97 20 -107 run playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 100000 .5
execute if score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin] title [{text:"Multiverse Stability",bold:true,color:red}]
execute if score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin,tag=!lobby] subtitle {text:"COLLAPSING",color:blue}

execute unless score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin] title [{text:"Multiverse Tether",bold:true,color:red}]
execute unless score #main pylonsDestroyed matches 4.. run title @a[tag=!falseWin,tag=!lobby] subtitle {text:"DESTROYED",color:gold}
title @a times 5 120 5

#Replace block to stop beacon beam
setblock 97 20 -107 minecraft:black_concrete

#Hide bossbar
bossbar set gast:pylon visible false
bossbar set gast:pylon4 visible false
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
tag @a[scores={lastVoidLock=11},tag=cmap,tag=!timeFree] add mirageLock
tag @a[scores={lastVoidLock=12},tag=cmap,tag=!timeFree] add wsLock
tag @a[scores={lastVoidLock=13},tag=cmap,tag=!timeFree] add jermLock
tag @a[scores={lastVoidLock=14},tag=cmap,tag=!timeFree] add hauntedLock
tag @a[scores={lastVoidLock=15},tag=cmap,tag=!timeFree] add shLock
tag @a[scores={lastVoidLock=16},tag=cmap,tag=!timeFree] add escLock
tag @a[scores={lastVoidLock=17},tag=cmap,tag=!timeFree] add wwLock
tag @a[scores={lastVoidLock=18},tag=cmap,tag=!timeFree] add ricardoLock
tag @a[scores={lastVoidLock=19},tag=cmap,tag=!timeFree] add flameLock

tag @a[scores={lastVoidLock=1},tag=kothMap,tag=!timeFree] add zigLock
tag @a[scores={lastVoidLock=2},tag=kothMap,tag=!timeFree] add nethLock
tag @a[scores={lastVoidLock=3},tag=kothMap,tag=!timeFree] add endLock
tag @a[scores={lastVoidLock=4},tag=kothMap,tag=!timeFree] add bowlLock
tag @a[scores={lastVoidLock=5},tag=kothMap,tag=!timeFree] add moraLock
tag @a[scores={lastVoidLock=6},tag=kothMap,tag=!timeFree] add duneLock
tag @a[scores={lastVoidLock=7},tag=kothMap,tag=!timeFree] add pazLock
tag @a[scores={lastVoidLock=8},tag=kothMap,tag=!timeFree] add chancelLock
tag @a[scores={lastVoidLock=9},tag=kothMap,tag=!timeFree] add lgLock
tag @a[scores={lastVoidLock=10},tag=kothMap,tag=!timeFree] add ctLock

execute as @a[tag=playing] unless score #main pylonsDestroyed matches 4 run function du-in:void/end/dream
execute as @a[tag=playing] if score #main pylonsDestroyed matches 4 run function du-in:void/end/vision

advancement grant @a[tag=win] only du-in:void/void_free

execute store result score #main gamemode run scoreboard players get #lastMode gamemode

tag @a remove kothMap
tag @a add fromVoid
tag @a add win