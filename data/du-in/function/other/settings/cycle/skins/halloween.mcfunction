
tellraw @s [{"text":"Halloween skins ","bold":true,"color":"dark_purple"},{"text":"selected!","color":"yellow"}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

function du-in:other/settings/cycle/skins/reset

#If you own the skin, display default
scoreboard players set @s[tag=charaSkins] charaSkin 0
scoreboard players set @s[tag=flowSkins] flowSkin 1
scoreboard players set @s[tag=friskSkins] friskSkin 1
scoreboard players set @s[tag=gasterSkins] gastSkin 0
scoreboard players set @s[tag=playSkins] steveSkin 1
scoreboard players set @s[tag=zombSkins] zombSkin 3
scoreboard players set @s[tag=springSkins] springSkin 1
scoreboard players set @s[tag=asgoreSkins] asgoreSkin 0
scoreboard players set @s[tag=slimeSkins] slimeSkin 0
scoreboard players set @s[tag=palpsSkins] palpsSkin 0
scoreboard players set @s[tag=nickSkins] wildeSkin 3
scoreboard players set @s[tag=villagerSkins] villSkin 1

#Execute display function
execute if entity @s[tag=charaSkins] run function du-in:other/skins/skin_menu/chara
execute if entity @s[tag=flowSkins] run function du-in:other/skins/skin_menu/flowey
execute if entity @s[tag=friskSkins] run function du-in:other/skins/skin_menu/frisk
execute if entity @s[tag=gasterSkins] run function du-in:other/skins/skin_menu/gaster
execute if entity @s[tag=playSkins] run function du-in:other/skins/skin_menu/player
execute if entity @s[tag=zombSkins] run function du-in:other/skins/skin_menu/zombie
execute if entity @s[tag=springSkins] run function du-in:other/skins/skin_menu/springtrap
execute if entity @s[tag=asgoreSkins] run function du-in:other/skins/skin_menu/asgore
execute if entity @s[tag=slimeSkins] run function du-in:other/skins/skin_menu/slime
execute if entity @s[tag=palpsSkins] run function du-in:other/skins/skin_menu/palps
execute if entity @s[tag=nickSkins] run function du-in:other/skins/skin_menu/nick
execute if entity @s[tag=villagerSkins] run function du-in:other/skins/skin_menu/villager

