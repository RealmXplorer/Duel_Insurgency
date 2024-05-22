
tellraw @s [{"text":"Summer skins ","bold":true,"color":"gold"},{"text":"selected!","color":"yellow"}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

function du-in:other/settings/cycle/skins/reset


#If you own the skin, display default
scoreboard players set @s[tag=nickSkins] wildeSkin 4
scoreboard players set @s[tag=playSkins] steveSkin 5
scoreboard players set @s[tag=zombSkins] zombSkin 5
scoreboard players set @s[tag=springSkins] springSkin 3
scoreboard players set @s[tag=kyloSkins] kyloSkin 0

#Execute display function
execute if entity @s[tag=nickSkins] run function du-in:other/skins/skin_menu/nick
execute if entity @s[tag=playSkins] run function du-in:other/skins/skin_menu/player
execute if entity @s[tag=zombSkins] run function du-in:other/skins/skin_menu/zombie
execute if entity @s[tag=springSkins] run function du-in:other/skins/skin_menu/springtrap
execute if entity @s[tag=kyloSkins] run function du-in:other/skins/skin_menu/kylo