#tag @a add krampusPack
tag @a add christmas
scoreboard players set @a wildeSkin 5
scoreboard players set @a sansSkin 1
scoreboard players set @a golemSkin 1
scoreboard players set @a creepSkin 1
scoreboard players set @a flowSkin 1
scoreboard players set @a clairenSkin 1
scoreboard players set #main lobbyTheme 1
function du-in:lobby/display/christmas/switch
stopsound @a
scoreboard players set @a music 0
execute as @a run function du-in:lobby/reset/item
clear @a
time set night
gamerule doDaylightCycle false
scoreboard players reset #main dayNightSetting
tellraw @a [{text:'Christmas spirit ', bold:true, color:dark_green},{text:'drifts through the air!', color:yellow}]