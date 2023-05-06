#tellraw @s ["",{"text":"ⓘ","bold":true,"color":"dark_red"},{"text":" You did not select a kit! You will spectate this round.","bold":true,"color":"gray"},{"text":" ⓘ","bold":true,"color":"dark_red"}]
tag @s remove kitPicked
tag @s add teamPicked
tag @s remove mystery
tag @s remove mysteryHead
scoreboard players reset @s mapVote
execute if entity @s[tag=!spect] run tellraw @a [{"selector":"@s[tag=!spect]","bold":true},{"text":" is spectating this round!","bold":true,"color":"gray"}]
clear @s barrier{CustomModelData:101}
tag @s[tag=!playing] add ready
team join Ready @s
tag @s[tag=!playing] add spect

execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items

##