tellraw @s [{text:"Halloween skins ",bold:true,color:dark_purple},{text:"selected!",color:yellow}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

tag @s remove randomSkins

# 1. Clear previous selections
function du-in:lobby/kitmenu/skins/presets/reset

# 2. Apply Halloween skin scores
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

# 3. Safely reset display using storage wrapper
function du-in:lobby/kitmenu/skins/presets/display_reset