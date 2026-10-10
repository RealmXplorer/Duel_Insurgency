summon marker ~-20 ~ ~-20 {Tags:["light_scanner","unset"]}

# scoreboard players set @e[type=marker,tag=light_scanner,limit=1,sort=nearest] lightScanX 0
# scoreboard players set @e[type=marker,tag=light_scanner,limit=1,sort=nearest] lightScanY 0
# scoreboard players set @e[type=marker,tag=light_scanner,limit=1,sort=nearest] lightScanZ 0

scoreboard players set @n[type=marker,tag=light_scanner,tag=unset] lightScanX 0
scoreboard players set @n[type=marker,tag=light_scanner,tag=unset] lightScanY 0
scoreboard players set @n[type=marker,tag=light_scanner,tag=unset] lightScanZ 0

# execute as @e[type=marker,tag=light_scanner,limit=1,sort=nearest] at @s run function du-in:kit/freddy/ability/light/scan_x

execute as @n[type=marker,tag=light_scanner,tag=unset] at @s run function du-in:kit/freddy/ability/light/scan_x