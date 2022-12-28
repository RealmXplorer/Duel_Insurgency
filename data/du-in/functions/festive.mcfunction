tag @a add krampusPack
scoreboard players set @a wildeSkin 2
scoreboard players set @a sansSkin 1
scoreboard players set @a golemSkin 1
scoreboard players set @a creepSkin 1
scoreboard players set @a flowSkin 1
scoreboard players set @a clairenSkin 1
scoreboard players set #main lobbyTheme 1
function du-in:lobby/display/christmas/switch
stopsound @a
scoreboard players set @a music 0
execute as @a run function du-in:lobby/item_reset
clear @a
time set night
gamerule doDaylightCycle false
tellraw @a [{"text":"Christmas spirit ","bold":true,"color":"dark_green"},{"text":"drifts through the air!","color":"yellow"}]