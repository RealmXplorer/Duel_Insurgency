scoreboard players add @a scannedZ 1
# Check the current block
execute if block ~ ~ ~ minecraft:sea_lantern run summon armor_stand ~ ~ ~ {Tags:["light"]}

# Move to the next Z position
scoreboard players add @s lightScanZ 1
tp @s ~ ~ ~1

# Continue scanning this row
execute if score @s lightScanZ matches 1..10 run function du-in:kit/freddy/ability/light/scan_z

# Return to the start of the Z row
execute if score @s lightScanZ matches 11 run tp @s ~ ~ ~-11