
tellraw @s [{text:"Christmas skins ",bold:true,color:dark_green},{text:"selected!",color:yellow}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

function du-in:other/settings/cycle/skins/reset

#If you own the skin, display default
scoreboard players set @s[tag=nickSkins] wildeSkin 1
scoreboard players set @s[tag=sansSkins] sansSkin 0
scoreboard players set @s[tag=golemSkins] golemSkin 0
scoreboard players set @s[tag=creepSkins] creepSkin 0
scoreboard players set @s[tag=flowSkins] flowSkin 0
scoreboard players set @s[tag=clairenSkins] clairenSkin 0

#Execute display function
execute if entity @s[tag=nickSkins] run function du-in:skins/skin_menu/nick
execute if entity @s[tag=sansSkins] run function du-in:skins/skin_menu/sans
execute if entity @s[tag=golemSkins] run function du-in:skins/skin_menu/golem
execute if entity @s[tag=creepSkins] run function du-in:skins/skin_menu/creeper
execute if entity @s[tag=flowSkins] run function du-in:skins/skin_menu/flowey
execute if entity @s[tag=clairenSkins] run function du-in:skins/skin_menu/clairen

