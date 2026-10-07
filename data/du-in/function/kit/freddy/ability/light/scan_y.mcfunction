#scoreboard players add @a scannedY 1
#setblock ~ ~ ~ sponge

# Start each Y row at Z = -5
scoreboard players set @s lightScanZ 0

function du-in:kit/freddy/ability/light/scan_z

# Move to the next Y row
scoreboard players add @s lightScanY 1
#tp @s ~ ~1 ~

# Scan the next Y row if there are any remaining
execute if score @s lightScanY matches 1..20 positioned ~ ~1 ~ run function du-in:kit/freddy/ability/light/scan_y

# Return to the bottom of the Y column
execute if score @s lightScanY matches 21 run tp @s ~ ~-21 ~