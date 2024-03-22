#function du-in:music/void/vain_pursuit
summon marker 10029 41 10063 {Tags:["pylon","mapSpecific"]}
setblock 10062 33 10063 air replace
schedule function du-in:void/hazard/bridge/pick_bridge 2s
schedule function du-in:void/hazard/fire/pick_pylon 10s
schedule function du-in:void/hazard/shock/prepare 20s
tellraw @a [{"text":"It's the end...","bold":true,"color":"dark_purple"}]
#scoreboard objectives modify matchDeaths displayname ["",{"text":"Match Deaths ","bold":true,"color":"red"},{"text":"(Max 3)","color":"gray"}]

summon marker 10029 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10029 52 10030 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10030 {Tags:["missileSpawn","mapSpecific"]}


execute as @a at @s run playsound minecraft:music.vain_pursuit record @s ~ ~ ~ 1000 1 1

schedule function du-in:void/end/win 180s
schedule function du-in:void/finale/end_intro 20s
schedule function du-in:void/finale/phase1 67s
schedule function du-in:void/finale/phase2 88s
schedule function du-in:void/finale/phase3 109s
schedule function du-in:void/finale/phase4 132s
schedule function du-in:void/finale/ending 174s

bossbar set gast:pylon4 players @a
bossbar set gast:pylon4 color white
bossbar set gast:pylon4 visible true
scoreboard players set #main pylonTimer 3600

scoreboard players set #gonerMax gonerCount 0

