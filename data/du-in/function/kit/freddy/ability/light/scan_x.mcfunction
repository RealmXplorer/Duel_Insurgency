scoreboard players add @a scannedX 1
# Start each X column at Y = -5
scoreboard players set @s lightScanY 0

function du-in:kit/freddy/ability/light/scan_y

# Move to the next X column
scoreboard players add @s lightScanX 1
tp @s ~1 ~ ~

# Scan the next X column if there are any remaining
execute if score @s lightScanX matches 1..10 run function du-in:kit/freddy/ability/light/scan_x

# Finished all 11 X columns
execute if score @s lightScanX matches 11 run kill @s