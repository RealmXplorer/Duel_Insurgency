summon marker ~-5 ~-5 ~-5 {Tags:["light_scanner"]}

scoreboard players set @e[type=marker,tag=light_scanner,limit=1,sort=nearest] lightScanX 0
scoreboard players set @e[type=marker,tag=light_scanner,limit=1,sort=nearest] lightScanY 0
scoreboard players set @e[type=marker,tag=light_scanner,limit=1,sort=nearest] lightScanZ 0

execute as @e[type=marker,tag=light_scanner,limit=1,sort=nearest] at @s run function du-in:kit/freddy/ability/light/scan_x