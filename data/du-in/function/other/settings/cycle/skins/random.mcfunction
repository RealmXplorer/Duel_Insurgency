tellraw @s [{text:"Random skins ",color:blue,bold:true},{text:"selected!",color:yellow,bold:true},{text:" (Changes each round)",color:gray,bold:false}]

playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

tag @s add randomSkins

function du-in:skin_menu/actions/random

#Execute display function
execute if entity @s[tag=villagerSkins] run function du-in:kit/villager/menu/skins/display
execute if entity @s[tag=friskSkins] run function du-in:kit/frisk/menu/skins/display
execute if entity @s[tag=flowSkins] run function du-in:kit/flowey/menu/skins/display
execute if entity @s[tag=golemSkins] run function du-in:kit/golem/menu/skins/display
execute if entity @s[tag=ralseiSkins] run function du-in:kit/ralsei/menu/skins/display
execute if entity @s[tag=sansSkins] run function du-in:kit/sans/menu/skins/display
execute if entity @s[tag=pussSkins] run function du-in:kit/puss/menu/skins/display
execute if entity @s[tag=charaSkins] run function du-in:kit/chara/menu/skins/display
execute if entity @s[tag=springSkins] run function du-in:kit/springtrap/menu/skins/display
execute if entity @s[tag=zombSkins] run function du-in:kit/zombie/menu/skins/display
execute if entity @s[tag=creepSkins] run function du-in:kit/creeper/menu/skins/display
execute if entity @s[tag=playSkins] run function du-in:kit/player/menu/skins/display
execute if entity @s[tag=gasterSkins] run function du-in:kit/gaster/menu/skins/display
execute if entity @s[tag=clairenSkins] run function du-in:kit/clairen/menu/skins/display
execute if entity @s[tag=nickSkins] run function du-in:kit/nick/menu/skins/display
execute if entity @s[tag=cupSkins] run function du-in:kit/cuphead/menu/skins/display
execute if entity @s[tag=kyloSkins] run function du-in:kit/kylo/menu/skins/display
execute if entity @s[tag=asgoreSkins] run function du-in:kit/asgore/menu/skins/display
execute if entity @s[tag=palpsSkins] run function du-in:kit/palps/menu/skins/display
execute if entity @s[tag=slimeSkins] run function du-in:kit/slime/menu/skins/display