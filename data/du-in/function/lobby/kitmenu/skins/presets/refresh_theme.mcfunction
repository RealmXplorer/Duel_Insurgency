# 1. Get kitList count dynamically from storage
$execute store result score @s kitList run data get storage du-in:groups group.$(active_group)

# 2. Add +1 buffer so kitList stays >0 on the last kit during render pass
scoreboard players add @s kitList 1

# 3. Apply active menu tag and clear existing heads
tag @s add kitsListed
clear @s minecraft:player_head

# 4. Trigger dynamic menu render pass
function du-in:lobby/kitmenu/menu/common

# 5. Reset kitList score and remove tag after menu render completes
scoreboard players set @s kitList 0
tag @s remove kitsListed