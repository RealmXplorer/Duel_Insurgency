tellraw @s [{text:"Random skins ",color:blue,bold:true},{text:"selected!",color:yellow,bold:true},{text:" (Changes each round)",color:gray,bold:false}]

playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

tag @s add randomSkins

function du-in:skins/random

#Execute display function
execute if entity @s[tag=villagerSkins] run function du-in:skins/skin_menu/villager
execute if entity @s[tag=friskSkins] run function du-in:skins/skin_menu/frisk
execute if entity @s[tag=flowSkins] run function du-in:skins/skin_menu/flowey
execute if entity @s[tag=golemSkins] run function du-in:skins/skin_menu/golem
execute if entity @s[tag=ralseiSkins] run function du-in:skins/skin_menu/ralsei
execute if entity @s[tag=sansSkins] run function du-in:skins/skin_menu/sans
execute if entity @s[tag=pussSkins] run function du-in:skins/skin_menu/puss
execute if entity @s[tag=charaSkins] run function du-in:skins/skin_menu/chara
execute if entity @s[tag=springSkins] run function du-in:skins/skin_menu/springtrap
execute if entity @s[tag=zombSkins] run function du-in:skins/skin_menu/zombie
execute if entity @s[tag=creepSkins] run function du-in:skins/skin_menu/creeper
execute if entity @s[tag=playSkins] run function du-in:skins/skin_menu/player
execute if entity @s[tag=gasterSkins] run function du-in:skins/skin_menu/gaster
execute if entity @s[tag=clairenSkins] run function du-in:skins/skin_menu/clairen
execute if entity @s[tag=nickSkins] run function du-in:skins/skin_menu/nick
execute if entity @s[tag=cupSkins] run function du-in:skins/skin_menu/cuphead
execute if entity @s[tag=kyloSkins] run function du-in:skins/skin_menu/kylo
execute if entity @s[tag=asgoreSkins] run function du-in:skins/skin_menu/asgore
execute if entity @s[tag=palpsSkins] run function du-in:skins/skin_menu/palps
execute if entity @s[tag=slimeSkins] run function du-in:skins/skin_menu/slime