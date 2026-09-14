
tellraw @s [{text:"Halloween skins ",bold:true,color:dark_purple},{text:"selected!",color:yellow}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

function du-in:skin_menu/presets/reset

#If you own the skin, display default
scoreboard players set @s[tag=charaSkins] charaSkin 1
scoreboard players set @s[tag=flowSkins] flowSkin 2
scoreboard players set @s[tag=friskSkins] friskSkin 2
scoreboard players set @s[tag=gasterSkins] gastSkin 1
scoreboard players set @s[tag=playSkins] steveSkin 2
scoreboard players set @s[tag=zombSkins] zombSkin 4
scoreboard players set @s[tag=springSkins] springSkin 6
scoreboard players set @s[tag=asgoreSkins] asgoreSkin 1
scoreboard players set @s[tag=slimeSkins] slimeSkin 1
scoreboard players set @s[tag=palpsSkins] palpsSkin 1
scoreboard players set @s[tag=nickSkins] wildeSkin 4
scoreboard players set @s[tag=villagerSkins] villSkin 2

#Execute display function
function du-in:skin_menu/presets/display_reset

