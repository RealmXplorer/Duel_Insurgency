playsound minecraft:soundeffect.vending master @a ~ ~ ~ 1000 1
execute store result score @s kickstartKind run random value 1..4
execute if entity @s[scores={kickstartKind=1}] run give @s minecraft:warped_fungus_on_a_stick[custom_name='{"text":"Orange Kickstart","bold":true,"color":"#FF8800","italic":false}',lore=['{"text":"I need it... I NEED IT!","bold":true}'],item_model="du-in:other/kickstart2"]
execute if entity @s[scores={kickstartKind=2}] run give @s minecraft:warped_fungus_on_a_stick[custom_name='{"text":"Pineapple Kickstart","bold":true,"color":"yellow","italic":false}',lore=['{"text":"I need it... I NEED IT!","bold":true}'],item_model="du-in:other/kickstart1"]
execute if entity @s[scores={kickstartKind=3}] run give @s minecraft:warped_fungus_on_a_stick[custom_name='{"text":"Fruit Punch Kickstart","bold":true,"color":"red","italic":false}',lore=['{"text":"I need it... I NEED IT!","bold":true}'],item_model="du-in:other/kickstart3"]
execute if entity @s[scores={kickstartKind=4}] run give @s minecraft:warped_fungus_on_a_stick[custom_name='{"text":"Blueberry Kickstart","bold":true,"color":"blue","italic":false}',lore=['{"text":"I need it... I NEED IT!","bold":true}'],item_model="du-in:other/kickstart4"]
tag @s add vended
