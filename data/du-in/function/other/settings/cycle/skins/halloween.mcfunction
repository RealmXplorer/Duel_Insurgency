
tellraw @s [{text:"Halloween skins ",bold:true,color:dark_purple},{text:"selected!",color:yellow}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

function du-in:other/settings/cycle/skins/reset

#If you own the skin, display default
scoreboard players set @s[tag=charaSkins] charaSkin 1
scoreboard players set @s[tag=flowSkins] flowSkin 2
scoreboard players set @s[tag=friskSkins] friskSkin 2
scoreboard players set @s[tag=gasterSkins] gastSkin 1
scoreboard players set @s[tag=playSkins] steveSkin 2
scoreboard players set @s[tag=zombSkins] zombSkin 4
scoreboard players set @s[tag=springSkins] springSkin 2
scoreboard players set @s[tag=asgoreSkins] asgoreSkin 1
scoreboard players set @s[tag=slimeSkins] slimeSkin 1
scoreboard players set @s[tag=palpsSkins] palpsSkin 1
scoreboard players set @s[tag=nickSkins] wildeSkin 4
scoreboard players set @s[tag=villagerSkins] villSkin 2

#Execute display function
function du-in:other/settings/cycle/skins/display_reset
# execute if entity @s[tag=charaSkins] run function du-in:kit/chara/menu/skins/display
# execute if entity @s[tag=flowSkins] run function du-in:kit/flowey/menu/skins/display
# execute if entity @s[tag=friskSkins] run function du-in:kit/frisk/menu/skins/display
# execute if entity @s[tag=gasterSkins] run function du-in:kit/gaster/menu/skins/display
# execute if entity @s[tag=playSkins] run function du-in:kit/player/menu/skins/display
# execute if entity @s[tag=zombSkins] run function du-in:kit/zombie/menu/skins/display
# execute if entity @s[tag=springSkins] run function du-in:kit/springtrap/menu/skins/display
# execute if entity @s[tag=asgoreSkins] run function du-in:kit/asgore/menu/skins/display
# execute if entity @s[tag=slimeSkins] run function du-in:kit/slime/menu/skins/display
# execute if entity @s[tag=palpsSkins] run function du-in:kit/palps/menu/skins/display
# execute if entity @s[tag=nickSkins] run function du-in:kit/nick/menu/skins/display
# execute if entity @s[tag=villagerSkins] run function du-in:kit/villager/menu/skins/display

