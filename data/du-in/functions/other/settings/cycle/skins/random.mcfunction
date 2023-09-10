#clear @s barrier{CustomModelData:104}

#tag @s add defaultSelect
tellraw @s [{"text":"Random skins ","bold":true,"color":"blue"},{"text":"selected!","color":"yellow"},{"text":" (Changes each round)","color":"light_gray"}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

tag @s add randomSkins

function du-in:other/skins/random

#If you do not own the skin, reset to 0
scoreboard players set @s[tag=!charaSkins] charaSkin 0
scoreboard players set @s[tag=!clairenSkins] clairenSkin 0
scoreboard players set @s[tag=!creepSkins] creepSkin 0
scoreboard players set @s[tag=!flowSkins] flowSkin 0
scoreboard players set @s[tag=!cupSkins] cupSkin 0
scoreboard players set @s[tag=!friskSkins] friskSkin 0
scoreboard players set @s[tag=!gasterSkins] gastSkin 0
scoreboard players set @s[tag=!golemSkins] golemSkin 0
scoreboard players set @s[tag=!nickSkins] wildeSkin 0
scoreboard players set @s[tag=!playSkins] steveSkin 0
scoreboard players set @s[tag=!pussSkins] pussSkin 0
scoreboard players set @s[tag=!ralseiSkins] ralSkin 0
scoreboard players set @s[tag=!sansSkins] sansSkin 0
scoreboard players set @s[tag=!springSkins] springSkin 0
scoreboard players set @s[tag=!villagerSkins] villSkin 0
scoreboard players set @s[tag=!zombSkins] zombSkin 0
scoreboard players set @s[tag=!kyloSkins] kyloSkin 0
scoreboard players set @s[tag=!asgoreSkins] asgoreSkin 0
scoreboard players set @s[tag=!palpsSkins] palpsSkin 0
scoreboard players set @s[tag=!slimeSkins] slimeSkin 0

#Execute display function
execute if entity @s[tag=villagerSkins] run function du-in:other/skins/skin_menu/villager
execute if entity @s[tag=friskSkins] run function du-in:other/skins/skin_menu/frisk
execute if entity @s[tag=flowSkins] run function du-in:other/skins/skin_menu/flowey
execute if entity @s[tag=golemSkins] run function du-in:other/skins/skin_menu/golem
execute if entity @s[tag=ralseiSkins] run function du-in:other/skins/skin_menu/ralsei
execute if entity @s[tag=sansSkins] run function du-in:other/skins/skin_menu/sans
execute if entity @s[tag=pussSkins] run function du-in:other/skins/skin_menu/puss
execute if entity @s[tag=charaSkins] run function du-in:other/skins/skin_menu/chara
execute if entity @s[tag=springSkins] run function du-in:other/skins/skin_menu/springtrap
execute if entity @s[tag=zombSkins] run function du-in:other/skins/skin_menu/zombie
execute if entity @s[tag=creepSkins] run function du-in:other/skins/skin_menu/creeper
execute if entity @s[tag=playSkins] run function du-in:other/skins/skin_menu/player
execute if entity @s[tag=gasterSkins] run function du-in:other/skins/skin_menu/gaster
execute if entity @s[tag=clairenSkins] run function du-in:other/skins/skin_menu/clairen
execute if entity @s[tag=nickSkins] run function du-in:other/skins/skin_menu/nick
execute if entity @s[tag=cupSkins] run function du-in:other/skins/skin_menu/cuphead
execute if entity @s[tag=kyloSkins] run function du-in:other/skins/skin_menu/kylo
execute if entity @s[tag=asgoreSkins] run function du-in:other/skins/skin_menu/asgore
execute if entity @s[tag=palpsSkins] run function du-in:other/skins/skin_menu/palps
execute if entity @s[tag=slimeSkins] run function du-in:other/skins/skin_menu/slime