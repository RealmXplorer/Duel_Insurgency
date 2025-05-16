tag @a add halloween
scoreboard players set @a gastSkin 1
scoreboard players set @a steveSkin 2
scoreboard players set @a steveSkin 2
scoreboard players set @a zombSkin 4
scoreboard players set @a charaSkin 1
scoreboard players set @a flowSkin 2
scoreboard players set @a springSkin 2
scoreboard players set @a friskSkin 2
scoreboard players set @a asgoreSkin 1
scoreboard players set @a slimeSkin 1
scoreboard players set @a palpsSkin 1
scoreboard players set @a wildeSkin 4
scoreboard players set @a villSkin 2
scoreboard players set #main lobbyTheme 1
function du-in:lobby/display/halloween/switch
stopsound @a
scoreboard players set @a music 0
execute as @a run function du-in:lobby/item_reset
clear @a
time set night
scoreboard players reset #main dayNightSetting
gamerule doDaylightCycle false

tellraw @a [{text:'Halloween spirit ', bold:true, color:dark_purple},{text:'drifts through the air!', color:yellow}]