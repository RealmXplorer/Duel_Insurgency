playsound minecraft:soundeffect.vending master @a ~ ~ ~ 1000 1
execute store result score @s kickstartKind run random value 1..4
execute if entity @s[scores={kickstartKind=1}] run give @s minecraft:warped_fungus_on_a_stick{CustomModelData:2001,display:{Name:'{"text":"Orange Kickstart","bold":"true","color":"#FF8800","italic":"false"}',Lore:['{"text":"I need it... I NEED IT!","bold":"true"}']}}
execute if entity @s[scores={kickstartKind=2}] run give @s minecraft:warped_fungus_on_a_stick{CustomModelData:2000,display:{Name:'{"text":"Pineapple Kickstart","bold":"true","color":"yellow","italic":"false"}',Lore:['{"text":"I need it... I NEED IT!","bold":"true"}']}}
execute if entity @s[scores={kickstartKind=3}] run give @s minecraft:warped_fungus_on_a_stick{CustomModelData:2002,display:{Name:'{"text":"Fruit Punch Kickstart","bold":"true","color":"red","italic":"false"}',Lore:['{"text":"I need it... I NEED IT!","bold":"true"}']}}
execute if entity @s[scores={kickstartKind=4}] run give @s minecraft:warped_fungus_on_a_stick{CustomModelData:2003,display:{Name:'{"text":"Blueberry Kickstart","bold":"true","color":"blue","italic":"false"}',Lore:['{"text":"I need it... I NEED IT!","bold":"true"}']}}
tag @s add vended
