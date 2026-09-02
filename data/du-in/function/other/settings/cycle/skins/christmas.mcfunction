
tellraw @s [{text:"Christmas skins ",bold:true,color:dark_green},{text:"selected!",color:yellow}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

function du-in:other/settings/cycle/skins/reset

#If you own the skin, display default
scoreboard players set @s[tag=nickSkins] wildeSkin 5
scoreboard players set @s[tag=sansSkins] sansSkin 1
scoreboard players set @s[tag=golemSkins] golemSkin 1
scoreboard players set @s[tag=creepSkins] creepSkin 1
scoreboard players set @s[tag=flowSkins] flowSkin 1
scoreboard players set @s[tag=clairenSkins] clairenSkin 1

#Execute display function
function du-in:other/settings/cycle/skins/display_reset

# execute if entity @s[tag=nickSkins] run function du-in:kit/nick/menu/skins/display
# execute if entity @s[tag=sansSkins] run function du-in:kit/sans/menu/skins/display
# execute if entity @s[tag=golemSkins] run function du-in:kit/golem/menu/skins/display
# execute if entity @s[tag=creepSkins] run function du-in:kit/creeper/menu/skins/display
# execute if entity @s[tag=flowSkins] run function du-in:kit/flowey/menu/skins/display
# execute if entity @s[tag=clairenSkins] run function du-in:kit/clairen/menu/skins/select

