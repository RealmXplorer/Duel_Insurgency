
tellraw @s [{text:"Summer skins ",bold:true,color:gold},{text:"selected!",color:yellow}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

function du-in:other/settings/cycle/skins/reset


#If you own the skin, display default
scoreboard players set @s[tag=nickSkins] wildeSkin 5
scoreboard players set @s[tag=playSkins] steveSkin 6
scoreboard players set @s[tag=zombSkins] zombSkin 1
scoreboard players set @s[tag=springSkins] springSkin 4
scoreboard players set @s[tag=kyloSkins] kyloSkin 1

#Execute display function
function du-in:other/settings/cycle/skins/display_reset


# execute if entity @s[tag=nickSkins] run function du-in:kit/nick/menu/skins/display
# execute if entity @s[tag=playSkins] run function du-in:kit/player/menu/skins/display
# execute if entity @s[tag=zombSkins] run function du-in:kit/zombie/menu/skins/display
# execute if entity @s[tag=springSkins] run function du-in:kit/springtrap/menu/skins/display
# execute if entity @s[tag=kyloSkins] run function du-in:kit/kylo/menu/skins/display