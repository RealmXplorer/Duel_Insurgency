#scoreboard players add @a scannedZ 1

# Check the current block
execute if block ~ ~ ~ #du-in:non_firelight run function du-in:kit/freddy/ability/light/take_light

# Move to the next Z position
scoreboard players add @s lightScanZ 1
#tp @s ~ ~ ~1

# Continue scanning this row
# execute if score @s lightScanZ matches 1..10 run function du-in:kit/freddy/ability/light/scan_z

execute if score @s lightScanZ matches 1..40 positioned ~ ~ ~1 run function du-in:kit/freddy/ability/light/scan_z

# Return to the start of the Z row
execute if score @s lightScanZ matches 41 run tp @s ~ ~ ~-21