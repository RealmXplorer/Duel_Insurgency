# Copy the resolved group's kit list into the working queue
$data modify storage du-in:temp kit_queue set from storage du-in:groups group.$(active_group)

# Update the kit count if needed
$execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:groups group.$(active_group)

execute if entity @s[tag=kitsListed] run tag @s remove kitsListed

# Poll the refreshed queue immediately
function du-in:lobby/kitmenu/menu/poll_group